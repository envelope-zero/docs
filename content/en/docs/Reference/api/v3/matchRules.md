---
title: "Match Rules"
description: >
  This document describes Match Rules in API version 3
---

## Migrating from v2

The `match` filter on GET requests to the collection endpoint is now matching all Match Rules **containing** the string. If it is explicitly set to empty, only Match Rules with an empty match are returned.
