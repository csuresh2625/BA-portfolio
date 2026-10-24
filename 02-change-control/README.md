# Construction Change Control & Requirements

**Portfolio case study — synthetic data; not employer work.**

## Business question
How can project teams track change requests, approval delays and cost variance?

## Dataset
750 simulated records, generated deterministically.

## Findings
- 750 synthetic change requests; 34.9% met an illustrative 7-day cycle SLA.
- Average cycle time: 8.53 days.
- 454 requests (60.5%) had actual cost above estimate in the synthetic dataset.

## Recommendations (proposed, not implemented)
- Standardise intake fields and owner assignment to avoid unclear approvals.
- Use priority-aware escalation and aging alerts for requests beyond 7 days.
- Add variance review before closure and compare post-pilot cycle times.

## Deliverables
- `synthetic_data.csv` — mock data
- `analysis.sql` — runnable SQLite analysis
- `business_requirements.md` — scope, stakeholders, requirements, KPIs
- `user_stories_and_uat.md` — user stories, acceptance criteria, UAT scenarios
- `process_mapping.md` — as-is / to-be
- `data_dictionary.md` — column definitions
- `dashboard.html` — self-contained metrics view

## Reproduce
Run `python ../rebuild_and_verify.py` from this project folder or run the script from the portfolio root.
