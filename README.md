\# Individual Assignment III: PL/SQL GOTO Statements and Functions



\- \*\*Course:\*\* Database Development with PL/SQL (INSY 8311)

\- \*\*Instructor:\*\* Eric Maniraguha

\- \*\*Student ID:\*\* 29179

\- \*\*First Name:\*\* Kenny

\- \*\*Submission Date:\*\* Thursday, October 8, 2026



\---



\## Project Overview

This repository contains practical implementations and test verifications for:

\- PL/SQL unconditional branching (`GOTO` statements) and structured refactoring.

\- PL/SQL Stored Functions for business metrics (annual salary, years of service, tax tiers, department lookup).

\- Exception handling in stored functions.

\- Calling user-defined functions inside SQL queries.

\- Comprehensive payroll data validation routines.



\---



\## Repository Structure



```text

plsql-goto-functions-29179-Kenny/

├── README.md

├── .gitignore

├── 00\_setup/

│   └── create\_tables.sql

├── 01\_goto/

│   ├── A1\_number\_classifier.sql

│   ├── A2\_salary\_review.sql

│   ├── A3\_illegal\_goto.sql

│   └── A4\_rewrite\_no\_goto.sql

├── 02\_functions/

│   ├── B1\_fn\_annual\_salary.sql

│   ├── B2\_fn\_years\_of\_service.sql

│   ├── B3\_fn\_calculate\_tax.sql

│   ├── B4\_fn\_dept\_name.sql

│   └── C1\_fn\_validate\_payroll.sql

├── 03\_tests/

│   ├── B5\_functions\_in\_select.sql

│   ├── test\_functions.sql

│   └── test\_validate\_payroll.sql

├── screenshots/

│   ├── A1\_output.png

│   ├── A2\_output.png

│   ├── A3\_error\_and\_fix.png

│   ├── A4\_output.png

│   ├── B5\_select\_output.png

│   └── C1\_output.png

└── docs/

&#x20;   └── REFLECTION.md

