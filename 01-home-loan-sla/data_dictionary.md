# Data dictionary

| Column | Meaning |
|---|---|
| `application_id` | Unique mock application key |
| `branch` | Fictional branch location |
| `channel` | Application intake channel |
| `loan_amount_inr` | Synthetic requested principal in INR |
| `missing_documents` | 1 indicates missing document(s) |
| `verification_days` | Simulated verification stage days |
| `underwriting_days` | Simulated underwriting stage days |
| `decision_days` | Simulated decision stage days |
| `total_days` | Sum of stage durations |
| `sla_met` | 1 if total_days <= 8 |
| `status` | Simulated decision state |
