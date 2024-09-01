---
title: "Transactions"
description: >
  Importing transactions into your Envelope Zero budget
---

You can import transactions from your bank accounts to your Envelope Zero accounts.

In the transaction list, use the "Import Transactions" button and follow the instructions there.

## Planned improvements

- We're planning to indicate if and how an account was matched during the import, see [frontend#1023](https://github.com/envelope-zero/frontend/issues/1023)

## Known bugs

- External Accounts are created multiple times if they are referenced multiple times during the same import action: [frontend#1017](https://github.com/envelope-zero/frontend/issues/1017)
- Using the "Import" button in quick succession leads to duplicate transactions [frontend#1013](https://github.com/envelope-zero/frontend/issues/1013)
