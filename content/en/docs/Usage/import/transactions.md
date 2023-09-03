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
- A CSV file that is empty or only has one line leads to a blank page [frontend#1014](https://github.com/envelope-zero/frontend/issues/1014)
- Using the "Import" button in quick succession leads to duplicate transactions [frontend#1013](https://github.com/envelope-zero/frontend/issues/1013)
- The "Available From" field is not displayed [frontend#1066](https://github.com/envelope-zero/frontend/issues/1066)
- When an error occurs on importing a transaction, the message is not cleared afterwards [frontend#1065](https://github.com/envelope-zero/frontend/issues/1065)
