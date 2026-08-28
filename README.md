# AZ-204 Study Notes

Personal study notes and video summaries while preparing for the **Microsoft Azure Developer Associate (AZ-204)** certification. Each file summarizes one course video in plain, concise English — key concepts, terminology, and the running examples used in the course, without unnecessary padding.

> **Note:** Modules 1–3 (App Services, Compute Solutions, Develop Azure Storage) are summarized separately in my own words/style and are not included in this repo.

## Structure

Each markdown file corresponds to a single video and is named:

```
README-module<N>-video<N>.md
```

(Module 4 files are simply named `README-video<N>.md`.)

---

## 📘 Module 4 — Azure Security for Developers

| # | Video | File |
|---|-------|------|
| 1 | Introduction to Azure Security | [README-video1.md](./README-video1.md) |
| 2 | Authentication and Authorization in Entra ID | [README-video2.md](./README-video2.md) |
| 3 | Microsoft Identity Platform | [README-video3.md](./README-video3.md) |
| 4 | Azure App Configuration | [README-video4.md](./README-video4.md) |
| 5 | Getting Started with Key Vault | [README-video5.md](./README-video5.md) |
| 6 | Advanced Key Vault Settings | [README-video6.md](./README-video6.md) |
| 7 | Secure Access with Managed Identities | [README-video7.md](./README-video7.md) |
| 8 | Introduction to Microsoft Graph | [README-video8.md](./README-video8.md) |
| 9 | Advanced Usage of Microsoft Graph | [README-video9.md](./README-video9.md) |

**Topics covered:** Entra ID (identity, authentication, authorization, users/groups/roles), the Microsoft Identity Platform (OAuth 2.0, OpenID Connect, app registration, service principals, permissions & consent), Azure App Configuration (key-value settings, feature flags, security options), Azure Key Vault (secrets/certificates/keys, RBAC vs access policies, soft delete, purge protection), Managed Identities (system-assigned vs user-assigned), and Microsoft Graph (API structure, pagination, batching).

---

## 📗 Module 5 — Monitor and Troubleshoot Azure Solutions

| # | Video | File |
|---|-------|------|
| 1 | Introduction to Azure Monitor | [README-module5-video1.md](./README-module5-video1.md) |
| 2 | Collecting and Viewing Metrics | [README-module5-video2.md](./README-module5-video2.md) |
| 3 | Automated Monitoring with Alerts | [README-module5-video3.md](./README-module5-video3.md) |
| 4 | Exploring Application Insights | [README-module5-video4.md](./README-module5-video4.md) |
| 5 | Availability Tests | [README-module5-video5.md](./README-module5-video5.md) |
| 6 | Exploring Log Analytics | [README-module5-video6.md](./README-module5-video6.md) |
| 7 | Instrumenting an App for Monitoring | [README-module5-video7.md](./README-module5-video7.md) |
| 8 | Application Map | [README-module5-video8.md](./README-module5-video8.md) |
| 9 | Optimizing Performance | [README-module5-video9.md](./README-module5-video9.md) |

**Topics covered:** Azure Monitor fundamentals (metrics, logs, alerts, dashboards), Metrics Explorer, alert rules & action groups, Application Insights (telemetry, distributed tracing, live metrics), availability tests (ping/standard/custom), Log Analytics workspaces & KQL, app instrumentation (auto vs manual), Application Map, and performance optimization (caching, Redis, throttling, async patterns).

---

## 📙 Module 6 — Azure API Management

| # | Video | File |
|---|-------|------|
| 1 | Introduction to API Management | [README-module6-video1.md](./README-module6-video1.md) |
| 2 | Anatomy of Azure API Management Service | [README-module6-video2.md](./README-module6-video2.md) |
| 3 | Configuring API Authentication and Access | [README-module6-video3.md](./README-module6-video3.md) |
| 4 | Implementing API Policies | [README-module6-video4.md](./README-module6-video4.md) |
| 5 | Authentication and Authorization Using Entra ID | [README-module6-video5.md](./README-module6-video5.md) |
| 6 | Response Caching and Usage Quotas | [README-module6-video6.md](./README-module6-video6.md) |
| 7 | API Versioning Strategy and Canary Releases | [README-module6-video7.md](./README-module6-video7.md) |
| 8 | Application Insights Overview (APIM Observability) | [README-module6-video8.md](./README-module6-video8.md) |
| 9 | Azure Resource Manager Overview | [README-module6-video9.md](./README-module6-video9.md) |

**Topics covered:** REST API fundamentals, APIM architecture (gateway, developer portal), authentication/authorization (OAuth, API keys, Entra ID integration), inbound/outbound policies, response caching & quotas, API versioning & canary releases (revisions vs versions), observability with Application Insights & KQL, and Infrastructure as Code with ARM templates.

---

## 📕 Module 7 — Develop Azure Event-based and Message-based Solutions

| # | Video | File |
|---|-------|------|
| 1 | Azure Event Grid Overview | [README-module7-video1.md](./README-module7-video1.md) |
| 2 | Event Routing, Filtering, and System Events | [README-module7-video2.md](./README-module7-video2.md) |
| 3 | Streaming Data Using Azure Event Hubs | [README-module7-video3.md](./README-module7-video3.md) |
| 4 | Queue Storage Overview | [README-module7-video4.md](./README-module7-video4.md) |
| 5 | Azure Service Bus Overview | [README-module7-video5.md](./README-module7-video5.md) |
| 6 | Sessions, Auto-Forwarding, and Partitions (Service Bus) | [README-module7-video6.md](./README-module7-video6.md) |
| 7 | Custom Topics, Filtering, and Retries (Event Grid) | [README-module7-video7.md](./README-module7-video7.md) |
| 8 | Event Capture, Scaling, and Partitions (Event Hubs) | [README-module7-video8.md](./README-module7-video8.md) |

**Topics covered:** Event-driven architecture, Event Grid (routing, filtering, system events, domains, dead-lettering, retries), Event Hubs (partitions, throughput units, consumer groups, checkpointing, Capture, geo-DR), Queue Storage (queue triggers, poison queue, delay/batching), and Service Bus (queues vs topics, sessions, duplicate detection, dead-lettering, partitioning).

---

## Quick Concept Map

```
Security & Identity        →  Module 4 (Entra ID, Identity Platform, Key Vault, Managed Identities, Graph)
Observability              →  Module 5 (Azure Monitor, App Insights, Log Analytics, Alerts)
API Exposure & Governance  →  Module 6 (API Management, policies, versioning, ARM)
Async Communication        →  Module 7 (Event Grid, Event Hubs, Queue Storage, Service Bus)
```

---

*These notes are personal study summaries created while working through an AZ-204 prep course. They are condensed for quick review and are not a verbatim transcript of the course material.*