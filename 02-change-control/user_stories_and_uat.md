# User stories and acceptance criteria

**US-01** As a project manager, I want requests by status, priority and owner so I can escalate aged work.
- Filtering by team changes counts and the 7-day SLA breach rate.
- Every record displays one unique change_id.

**US-02** As finance, I want estimated-versus-actual variance so I can investigate overspends.
- Variance equals actual_cost_inr minus estimated_cost_inr for every row.
- Aggregated variance equals sum of row-level variances.

**US-03** As an approver, I want mandatory owner and decision metadata to reduce ambiguous handoffs.
- In the proposed system, an approval cannot be completed without approver, timestamp and reason code.


# UAT test cases
| ID | Scenario | Expected result |
|---|---|---|
| C01 | File load | 750 unique change IDs |
| C02 | Cycle boundary | 7 days passes; 8 days breaches |
| C03 | Cost variance | Actual minus estimate for all 750 rows |
| C04 | Project grouping | Counts sum to 750 |
| C05 | Status filter | Approved + Rejected + Open = 750 |
