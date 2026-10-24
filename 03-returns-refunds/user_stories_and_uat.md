# User stories and acceptance criteria

**US-01** As a returns lead, I want category-level return rates to prioritise investigation.
- Numerator is returned orders in category; denominator is all orders in category.
- Overall denominator is 6,000 orders.

**US-02** As customer support, I want refunds older than 7 days so I can contact affected customers.
- Only returned orders enter refund-SLA metrics.
- At 7 days, SLA is met; at 8 days, SLA is breached.

**US-03** As finance, I want a reproducible exception list to reconcile the refund queue.
- Each exception retains unique order ID, channel, category, reason and days.


# UAT test cases
| ID | Scenario | Expected result |
|---|---|---|
| E01 | File load | 6,000 unique order IDs |
| E02 | Return-rate denominator | Total orders = 6,000 |
| E03 | Refund SLA denominator | Only `returned=1` records |
| E04 | Refund boundary | 7 days passes; 8 days breaches |
| E05 | Non-returns | No refund-days or SLA counted for non-returns |
