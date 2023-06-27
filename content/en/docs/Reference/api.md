---
title: "API"
description: >
  This document contains the API design. It is aimed at developers and to support administrators in debugging issues.
---

## Generated API documentation

The backend has automatically generated API documentation available at `/docs/index.html`.

## High level guarantees

- Any resource will be available at the endpoints `/{resource}` for the collection and `/{resource}/{id}` for a single resource.
- Filtering on collection endpoints is implemented with URL parameters (“query strings“)
- All endpoints support the `OPTIONS` HTTP method to be [HATEOAS](https://en.wikipedia.org/wiki/HATEOAS)
- Collections always support the HTTP methods `GET` (read resources) and `POST` (create new resource)
- Resources support the HTTP methods `GET` (read resource), `PATCH` (update resource) and `DELETE` (delete resource)

## API responses

### All API versions

- All API responses either have an empty body (only for HTTP 204 responses) or the body consists of only JSON.
- The `error` key always has a value of type `string`, containing a human readable error message. Those error messages are intended to be passed to the user of the application.
- All attributes for a resource are always contained in the objects that the API returns.

### v1

- All API responses have **either** a `data` or an `error` top level key. They can’t appear at the same time.
- The `data` key is either a list of objects (for collection endpoints) or a single object (for resource endpoints).

### v2

- API responses are either a list of objects (for collection endpoints) or a single object (for resource endpoints).
- On `POST` endpoints, each object (in the list, if it's a bulk creation endpoint) always has a `data` and an `error` key. If an error ocurred, `error` will contain an error message. If no error occurs, `error` is `null` and `data` contains the created resource.

## Resources

All resources share the following **read only** attributes:

- `createdAt` (string): An RFC3339 timestamp of the time when the resource was created.
- `updatedAt` (string): An RFC3339 timestamp of the time when the resource was updated.
- `deletedAt` (string): An RFC3339 timestamp of the time when the resource was deleted. Can be null.
- `id` (string): The UUID of the object.
- `links` (object): A map of related resources.
  - `self` (string): The full URL of the resource itself.
