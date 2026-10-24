# User stories and acceptance criteria

**US-01** As an operations manager, I want SLA compliance by branch so I can prioritise investigation.
- Given 2,400 loaded records, when the dashboard opens, then the overall denominator equals 2,400.
- Given a branch filter, then the branch denominator and SLA percentage recalculate correctly.

**US-02** As a document-verification lead, I want to compare incomplete and complete applications so I can plan process changes.
- When missing_documents=1, then only flagged applications are included.
- Average duration uses all filtered records, not only approved applications.

**US-03** As an analyst, I want an exception export so I can trace SLA breaches.
- Export includes application_id, channel, branch, stage days and total days.
- SLA breach condition is total_days > 8.


# UAT test cases
| ID | Scenario | Expected result |
|---|---|---|
| L01 | Load file | 2,400 unique application IDs |
| L02 | SLA threshold boundary | 8 days passes; 9 days fails |
| L03 | Filter missing docs | Count matches `SUM(missing_documents)` |
| L04 | Group by branch | Branch counts sum to 2,400 |
| L05 | Validate stage totals | Each total equals sum of three stages |
