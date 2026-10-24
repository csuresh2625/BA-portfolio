# Business Requirements Document — Home Loan Origination SLA

**Scenario:** Fictional multi-branch home finance operation. **Data:** synthetic. **Status:** proposed analysis, not a deployed improvement.

## Problem and objective
Loan applications exceed an illustrative 8-day processing SLA. Identify process delays, quantify document-related rework, and define a weekly operations monitoring requirement.

## Stakeholders
Operations lead (sponsor), branch managers, credit/underwriting, document verification, reporting analyst, compliance reviewer, applicants.

## Scope
In scope: application intake, document completeness, verification, underwriting, decision time, SLA reporting. Out of scope: credit model decisions, customer PII, production integration, regulatory compliance certification.

## Functional requirements
- FR-01: Display total applications and SLA-met percentage using a documented 8-day threshold.
- FR-02: Slice performance by channel and branch.
- FR-03: Compare cycle time for complete vs incomplete applications.
- FR-04: Provide record-level exception list with application ID, stage durations, and missing-documents flag.
- FR-05: Support weekly exports and an audit trail of metric definitions.

## Non-functional requirements
No personal data in reports; role-based access in a production implementation; scheduled refresh, accuracy reconciliation to source counts.

## KPI definitions
- Cycle time = verification + underwriting + decision days.
- SLA met = cycle time <= 8 days (illustrative threshold).
- SLA compliance = number SLA met / all applications.
- Missing-document rate = flagged applications / all applications.

## Assumptions / risks
Synthetic stage durations and SLA are illustrative; production stage timestamps and business calendar rules would require validation. Pending cases are included in the simulation's cycle-time analysis; a live dashboard should distinguish completed and open cases.

## Success criteria (proposed)
Weekly dashboard reconciles 100% to input records; UAT verifies segmentation, formulas and missing-document filters. No claimed operational uplift.
