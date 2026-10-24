# E-commerce Returns & Refund Journey

**Portfolio case study — synthetic data; not employer work.**

## Business question
Where are returns and refunds delayed, and what reporting should teams use?

## Dataset
6,000 simulated records, generated deterministically.

## Findings
- 6,000 synthetic orders; 960 returned (16.0% return rate).
- 67.6% of returns met the illustrative 7-day refund SLA; average refund time 6.22 days.
- 527 returned orders were flagged as contacting support in the simulation.

## Recommendations (proposed, not implemented)
- Introduce reason-code validation at return intake and monitor category/channel trends.
- Trigger proactive refund status messages and 7-day escalation alerts.
- Pilot changes, then compare support-contact and refund-SLA metrics against a baseline.

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
