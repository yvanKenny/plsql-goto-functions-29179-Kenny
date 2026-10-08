\# Assignment III: Reflection Report



\- \*\*Course:\*\* Database Development with PL/SQL (INSY 8311)

\- \*\*Student Name:\*\* Kenny

\- \*\*Student ID:\*\* 29179

\- \*\*Date:\*\* October 8, 2026



\---



\## 1. Why the GOTO Statement Is Discouraged in Modern Software Development



Although PL/SQL supports unconditional branching via `GOTO`, its usage in modern enterprise systems is strongly discouraged for several key reasons:



1\. \*\*Produces "Spaghetti Code":\*\* Unrestricted jumps break the linear and hierarchical structure of programs. As branches multiply, tracking execution flow becomes difficult for developers, making debugging and tracing runtime errors significantly harder.

2\. \*\*Skips Critical Initializations and Validations:\*\* A `GOTO` can bypass essential variable assignments, null checks, or setup routines, introducing unpredictable runtime bugs and undefined states.

3\. \*\*Breaks Block Scoping Rules:\*\* PL/SQL imposes strict compilation constraints (such as `PLS-00375`), forbidding jumps into `IF` statements, loops, or child sub-blocks from the outside. Attempting to manage branching around these constraints results in brittle code.

4\. \*\*Maintenance Overhead:\*\* Modern programming relies on structured control flow (`IF-THEN-ELSIF`, `CASE`, `WHILE`, and `FOR` loops). Structured blocks have predictable entry and exit points, which improves readability, testability, and code review efficiency.



\---



\## 2. How User-Defined Functions Extend SQL Query Capabilities



PL/SQL user-defined functions provide distinct advantages when integrated with standard SQL queries:



1\. \*\*Elimination of Redundant Logic (DRY Principle):\*\* Instead of rewriting complex formulas (e.g., progressive tax brackets or annual compensation calculations) in multiple `SELECT` statements, the logic is encapsulated inside a single stored function. If tax rules change, updating the function updates all queries automatically.

2\. \*\*Seamless Data Transformation in Queries:\*\* Stored functions can be called directly within `SELECT`, `WHERE`, and `ORDER BY` clauses. This allows database developers to dynamically compute values—such as `fn\_years\_of\_service(hire\_date)` or `fn\_dept\_name(dept\_id)`—directly in the result set without repetitive joins or subqueries.

3\. \*\*Centralized Exception and Error Handling:\*\* Functions gracefully intercept exceptions (such as `NO\_DATA\_FOUND` or invalid inputs) and return standardized fallback strings or zero values, preventing queries from crashing midway through batch operations.



\---



\## 3. Academic Integrity \& AI Collaboration



In accordance with course guidelines:

\- Generative AI was consulted as an interactive architectural reference guide and troubleshooting peer.

\- It was specifically used to clarify PL/SQL compilation rules (e.g., resolving `PLS-00375` illegal branch errors), resolve Windows Command Prompt execution paths, and structure repository documentation.

\- All code, function outputs, and test blocks have been compiled, executed, and independently verified against the local Oracle Database.

