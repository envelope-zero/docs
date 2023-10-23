---
title: "Healthchecks"
description: >
  This document describes the /healthz endpoint
date:
---

The backend exposes a healthcheck endpoint at `/healthz` in version `v3.3.0` and newer.

It returns

- HTTP 204 for success
- HTTP 500 with an error message when there is an error

Use this endpoint for health checks run by e.g. your monitoring, the Kubernetes liveness and readiness probes or
the docker compose health checks.
