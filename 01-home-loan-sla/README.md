# Home Loan Origination & SLA Improvement

**Portfolio case study — synthetic data; not employer work.**

## Business question
Which intake and verification steps contribute to slow loan processing?

## Dataset
2,400 simulated records, generated deterministically.

## Findings
- 2,400 synthetic applications; 48.0% met the illustrative 8-day SLA.
- Average simulated cycle time: 8.77 days.
- 321 applications (13.4%) had missing documents; their average was 11.66 days versus 8.33 days for complete files.

## Recommendations (proposed, not implemented)
- Introduce a pre-submission completeness checklist with channel-specific prompts.
- Add aging alerts for underwriting queues and a branch/channel SLA exception dashboard.
- Pilot a change and measure the before/after difference; no savings or improvement is claimed yet.

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
