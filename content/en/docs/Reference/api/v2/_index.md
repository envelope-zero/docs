---
title: "v2"
description: >
  This document describes API version 2
---

{{% pageinfo %}}
API v2 does not yet have endpoints for all resources. As long as new endpoints are added, this document will be updated with them.
{{% /pageinfo %}}

## General

This describes general behavior of all API endpoints

### Unchanged from v1

- All API responses either have an empty body (only for HTTP 204 responses) or the body consists of only JSON.
- The `error` key always has a value of type `string`, containing a human readable error message. Those error messages are intended to be passed to the user of the application.
- API responses always contain all attributes for an object

### Changed in v2

- API responses do not all have a `data` or `error` key on the top level. Unsuccessful requests will have a response with an `error` key (this is unchanged to v1). Successful API responses will behave as described below.
- API responses are either a list of objects (for collection endpoints) or a single object (for resource endpoints).
- `POST` endpoints now take a **list** of objects to be created, not a singular object. The response will also be a list of objects, where every object has a `data` and an `error` key. If an error ocurred, `error` will contain an error message. If no error occurs, `error` is `null` and `data` contains the created resource.
- `PATCH` endpoints and `GET` resource endpoints return the resource object (instead of a map containing a key `data` with the resource object as value)
- `GET` list endpoints return a list of the resource objects (instead of a map containing a key `data` with a list of the resource objects as value)

## Migrating from v1

_Changes to all endpoints are covered in [Changed in v2](#changed-in-v2)._

For changes to the different resources, check their respective pages.
