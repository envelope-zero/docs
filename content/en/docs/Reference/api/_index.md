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
- All endpoints support the `OPTIONS` HTTP method to be [HATEOAS](https://en.wikipedia.org/wiki/HATEOAS) compliant. Use the `OPTIONS` method to discover available HTTP methods
- Collections support the HTTP methods `GET` (read resources) and `POST` (create new resource). **Note**: The newest API version might not yet support all methods for all endpoints. In this case, you can use an older API version if necessary.
- Resources support the HTTP methods `GET` (read resource), `PATCH` (update resource) and `DELETE` (delete resource). **Note**: The newest API version might not yet support all methods for all endpoints. In this case, you can use an older API version if necessary.

## Resources

All resources share the following **read only** attributes:

- `createdAt` (string): An RFC3339 timestamp of the time when the resource was created.
- `updatedAt` (string): An RFC3339 timestamp of the time when the resource was updated.
- `deletedAt` (string): An RFC3339 timestamp of the time when the resource was deleted. Can be null.
- `id` (string): The UUID of the object.
- `links` (object): A map of related resources.
  - `self` (string): The full URL of the resource itself.

## Content transformations

The following transformations will be applied to resources before they are saved:

- All string fields will have whitespace at the beginning and the end of the string trimmed away. For example, if you set an envelope name as `   Test Envelope   `, it will be saved as `Test Envelope`.
