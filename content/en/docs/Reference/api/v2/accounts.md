---
title: "Accounts"
description: >
  This document describes Accounts in API version 2
---

## Recent Envelopes

The `recentEnvelopes` field is a list of the 5 most common Envelopes that were used for the last 50 transactions where the account was the destination.
The list is ordered by the frequency with the most common Envelope being the first one. If two Envelopes have been used the same amount of times,
the one that was created **more recently** is first in the list.

Income transactions are also counted in this list, with income appearing as the `null` value.

Use this field to pre-fill the Envelope when creating transactions in a client.

## Migrating from v1

- The `recentEnvelopes` field is now a list of IDs instead of a list envelope objects. Income is represented by `null`
