---
title: "YNAB 4"
description: >
  How to import a budget from YNAB 4
---

You can import a YNAB 4 budget directly into Envelope Zero. Please read this whole section carefully before you do so.

### Notable differences

The following is **not yet supported** in Envelope Zero and will therefore be ignored:

- Recurring transactions. They will be implemented with [milestone #5](https://github.com/envelope-zero/backend/milestone/5) and import supported with https://github.com/envelope-zero/backend/issues/379.

The following **work differently** on Envelope Zero:

- Date formatting. While YNAB 4 does date formatting per Budget, in Envelope Zero, the formatting is decided by the browser (https://github.com/envelope-zero/frontend/issues/145) or by the users configuration (https://github.com/envelope-zero/backend/issues/33)
- Transactions always need to have a source and destination. Transactions that do not have a Payee set in YNAB 4 will be imported with the opposing account as „YNAB 4 Import - No Payee“.
- Transactions can not have an amount of 0 - if no money was moved, no transaction is needed. Any transaction with an amount of 0 will be ignored during the import.
- Envelope Zero does not allow you to subtract overspend from the next month's balance of the envelope. If you have this set anywhere, Envelope Zero will subtract the overspend from the next months allocation instead. While this changes the allocation, it keeps all the other sums of the budget intact

### How to import

YNAB 4 saves all data in a file that can be imported directly to Envelope Zero. The file has the name `Budget.yfull`, you can find it by doing the following:

1. Go to the directory where your YNAB 4 budget file is saved. This file is actually a directory, but it claims to be a file. You can enter this directory with
1. On MacOS: Right click -> Show package content
   1. On Windows: ?
   1. Open the `Budget.ymeta` file with any text editor. This file tells us which directory to look into next. Check the `relativeDataFolderName` string. Open this directory
1. In the directory, you will find another directory with a UUID as name, for example `F90E864E-8D96-4E0E-A723-776CEEB1C2F0`. Open this directory, too.
1. In there, you will find a Budget.yfull file. This is the one you need, copy it to e.g. your Desktop.
1. Navigate to your Envelope Zero instance and add a new budget. In the dialog, click "Import an existing budget from YNAB 4 instead" and follow the instructions
