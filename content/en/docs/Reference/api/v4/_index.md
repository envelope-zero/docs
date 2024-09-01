---
title: "v4"
description: >
  This document describes API version 4
---

## General

This describes general behavior of all API endpoints.

- Response bodies (execpt for HTTP 204) are JSON.
- A repsonse for a resource always contains all attributes
- The `error` property is either a string or `null`. Each non-204 API response always contains an `error` property.
- The `data` property is either an array of objects for collection endpoints or a single object for resource endpoints.
- `POST` endpoints take a array of objects to be created. The response will also be a list of objects, where every object has a `data` and an `error` property. If an error ocurred, `error` will contain an error message. If no error occurs, `error` is `null` and `data` contains the created resource.
- `PATCH` endpoints and `GET` resource endpoints return an object with an `error` and a `data` property. If an error ocurred, the `error` property contains a human readable error message intended for the end user. If no error occurs, `error` is null and `data` contains the resource
- `GET` collection endpoints return an object with an `error` and a `data` property. If an error ocurred, the `error` property contains a human readable error message intended for the end user. If no error occurs, `error` is null and `data` contains an array of objects where each object is a resource

## Modifying resources

When you modify resources with a `PATCH` request, all data that cannot be modified is ignored.

This enables you to read a resource from the API, change the fields that you want to update and send a `PATCH` request to the resources `.links.self` URL with the whole resource.

Of course, you can also just send the modified fields.

## JSON Schemas

This is a list of all JSON schemas for request and response bodies.

As of now, these do **not** describe the schema for the resources themselves. This means that any property with any value will pass validation
for the different resources Envelope Zero knows, e.g. a Transaction.

However, these schemas can be used to validate that the general request or response format is implemented correctly.

{{< directoryindex path="/static/schemas/v4" pathURL="/schemas/v4" >}}
