---
title: "Match Rules"
description: >
  This document describes match rules
---

## Migrating from v2

The `match` filter on GET requests to the collection endpoint is now matching all Match Rules **containing** the string. If it is explicitly set to empty, only match rules with an empty match are returned.
