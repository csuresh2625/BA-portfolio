# Business Requirements Document — Construction Change Request Tracking

**Scenario:** Fictional construction/interiors portfolio. **Data:** synthetic. **Status:** portfolio exercise, not employer deliverable.

## Problem
Changes are submitted through multiple channels, making approval status, aging and cost variance hard to track. Define a controlled intake-to-approval workflow and management reporting.

## Stakeholders
Project sponsor, architect, project manager, procurement, client representative, finance and reporting analyst.

## Scope
Intake, classification, owner assignment, approval workflow, time tracking, cost variance and status dashboard. Excludes live contract approvals and integrations.

## Functional requirements
- FR-01: Unique change request ID, project, type, priority, owner, estimate, actual cost and status.
- FR-02: SLA breach flag based on an illustrative 7-day cycle threshold.
- FR-03: Status and aging visibility by owner team and request type.
- FR-04: Estimated vs actual cost variance reporting, both record-level and aggregated.
- FR-05: Approval history, reason for rejection and mandatory decision owner (future-system requirements).

## KPI definitions
Cycle days = review days + approval days; SLA met when cycle days <= 7; variance = actual minus estimate; positive variance is cost overrun.

## Non-functional requirements
Role-based permissions, dated approvals, immutable history, validation of mandatory fields and periodic reconciliation.

## Dependencies and risk
Real approvals may have parallel paths and paused clocks; model and SLA are simplified. Actual costs may be unknown for open requests, which must be handled separately in a real system.

## Success criteria (proposed)
All records traceable by ID; owner and status filter UAT passes; cost variance totals reconcile; no business benefit asserted without implementation.
