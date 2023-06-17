---
categories: ["Examples", "Placeholders"]
tags: ["test", "docs"]
title: "Getting Started"
linkTitle: "Getting Started"
weight: 2
description: >
  How to install and open Envelope Zero
---

{{% pageinfo %}}
Envelope Zero supports two general installation methods: The **standalone** version and the **services** version. Before you continue, please check out which version is better suited to your needs.

This page will be expanded soon.
{{% /pageinfo %}}

## Standalone vs. Services

{{% alert title="Info" %}}
You can always switch between the two different installation methods
{{% /alert %}}

The **standalone** version is one file that you can execute on your computer like any other program. If you do not want to bother with setting up your own infrastructure or just want to do a quick test of Envelope Zero, we recommend the **standalone** version.

With the **services** version, the frontend (your User Interface) and the backend (the API and database) run as two separate services. This allows you to use Envelope Zero from any computer in the connected network.

**Note**: The **services** version currently features **no access control mechanism**. Anyone on your network will be able to access it if you do not add e.g. HTTP Basic Authentication in front of it. If you are unsure what this means, we recommend to use the **standalone** version for now.

## Standalone

Please follow the instructions in https://github.com/envelope-zero/standalone#quick-start to get started.

## Services

### Backend

Set up the backend first. Follow the instructions in https://github.com/envelope-zero/backend/#deployment-methods.

Then, set up the frontend. Follow the instructions in https://github.com/envelope-zero/frontend#deployment.

Since the frontend expects the backend to be available at the same hostname under the `/api` path, you will have to rewrite requests to the backend to remove the `/api` prefix from the path. For now, please consult your reverse proxy's documentation for how to do this. We will add documentation about this later.
