# Data dictionary

| Column | Meaning |
|---|---|
| `order_id` | Unique synthetic order key |
| `category` | Mock merchandise category |
| `channel` | Purchase channel |
| `order_value_inr` | Mock order value in INR |
| `returned` | 1 if returned |
| `return_reason` | Mock return reason or Not Returned |
| `refund_days` | Refund cycle days for returns; 0 otherwise |
| `refund_sla_met` | 1 if return refunded within 7 days; blank for non-returns |
| `customer_contacted_support` | Simulated support-contact flag |
