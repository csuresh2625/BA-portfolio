"""Reproduce and verify all three portfolio case studies using Python stdlib + SQLite.
Run: python rebuild_and_verify.py from portfolio/ (or any directory).
"""
from pathlib import Path
import csv,sqlite3
root=Path(__file__).resolve().parent
for slug,table,expected in [
 ('01-home-loan-sla','loan_applications',2400),
 ('02-change-control','change_requests',750),
 ('03-returns-refunds','orders',6000)]:
 folder=root/slug
 with (folder/'synthetic_data.csv').open(newline='',encoding='utf-8') as f: rows=list(csv.DictReader(f))
 assert len(rows)==expected,(slug,len(rows))
 assert len({next(iter(r.values())) for r in rows})==expected,'IDs must be unique'
 db=sqlite3.connect(':memory:')
 cols=list(rows[0]);numeric=set(cols)-{'application_id','branch','channel','status','change_id','project','request_type','owner_team','priority','order_id','category','return_reason'}
 db.execute('CREATE TABLE '+table+' ('+', '.join('"'+c+'" '+('REAL' if c in numeric else 'TEXT') for c in cols)+')')
 vals=[[float(r[c]) if c in numeric and r[c]!='' else (None if r[c]=='' else r[c]) for c in cols] for r in rows]
 db.executemany('INSERT INTO '+table+' VALUES ('+','.join(['?']*len(cols))+')',vals)
 statements=(folder/'analysis.sql').read_text(encoding='utf-8').split(';')
 for statement in statements:
  if statement.strip():
   results=db.execute(statement).fetchall()
   assert results,'SQL query returned no rows'
 if slug=='01-home-loan-sla':
  assert db.execute('SELECT COUNT(*) FROM loan_applications WHERE total_days != verification_days+underwriting_days+decision_days').fetchone()[0]==0
 if slug=='02-change-control':
  assert db.execute('SELECT COUNT(*) FROM change_requests WHERE cost_variance_inr != actual_cost_inr-estimated_cost_inr').fetchone()[0]==0
 if slug=='03-returns-refunds':
  assert db.execute('SELECT COUNT(*) FROM orders WHERE returned=0 AND refund_days!=0').fetchone()[0]==0
 print(f'PASS {slug}: {expected:,} records; {len([s for s in statements if s.strip()])} SQL queries')
 db.close()
