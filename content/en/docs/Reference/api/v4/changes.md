---
title: "Changes from v3"
description: >
  API changes from v3 to v4
---

- the budget ID is removed from the transaction resource
- calculated fields have been removed from the `GET /accounts` endpoint, instead, use
  - `/accounts/{id}/recent-envelopes` for the recently used envelopes
  - `/accounts/computed` for the accounts' calculated data
