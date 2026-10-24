# Data dictionary

| Column | Meaning |
|---|---|
| `change_id` | Unique mock change key |
| `project` | Fictional project |
| `request_type` | Change classification |
| `owner_team` | Responsible functional team |
| `priority` | Request priority |
| `review_days` | Simulated impact review duration |
| `approval_days` | Simulated approval duration |
| `cycle_days` | Sum of review and approval days |
| `sla_met` | 1 if cycle_days <= 7 |
| `estimated_cost_inr` | Mock estimated cost |
| `actual_cost_inr` | Mock actual cost |
| `cost_variance_inr` | Actual minus estimate |
| `status` | Mock workflow state |
