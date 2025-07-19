# PlsQl

PlsQl: Procedural Language for SQL

## Project Overview
This project contains a series of exercises and examples for learning and practicing PL/SQL (Procedural Language/Structured Query Language) concepts, including triggers, procedures, functions, cursors, and packages. The exercises are organized into modules, each focusing on different aspects of PL/SQL and SQL programming.

## Directory Structure
- `cours/`: PDF course materials covering SQL, PL/SQL, triggers, procedures, functions, exceptions, and more.
- `plsql_module_1/`: Exercises focused on triggers and basic PL/SQL constructs.
- `plsql_module_2/`: Exercises on procedures, cursors, and more advanced PL/SQL topics.
- `plsql_module_3/`: Exercises on functions and calculations in PL/SQL.
- `plsql_module_4/package/`: Examples of PL/SQL packages and package bodies.

## Module Details
### plsql_module_1
- `ex00` to `ex06`: Each folder contains an `exXX.sql` file with a specific PL/SQL exercise, such as creating triggers to enforce business rules or output messages on table events.

### plsql_module_2
- `ex00` to `ex05`: Each folder contains an `exXX.sql` file with exercises on procedures, cursor usage, and exception handling.

### plsql_module_3
- `ex00` to `ex02`: Each folder contains an `exXX.sql` file with exercises on PL/SQL functions, including calculations and data retrieval.

### plsql_module_4/package
- `package.sql`, `package_apple.sql`, `package_body.sql`: Examples of PL/SQL package specifications and bodies.

## Usage
1. Open the desired `.sql` file in your Oracle SQL environment.
2. Run the script to create or test the PL/SQL object (trigger, procedure, function, or package).
3. Use `SET SERVEROUTPUT ON;` to view output from `DBMS_OUTPUT.PUT_LINE` statements.

## Notes
- Some scripts include error handling and business logic enforcement using triggers and exceptions.
- Errors found in the original scripts (such as typos and logic errors) have been corrected for proper execution.
- Refer to the `cours/` directory for detailed theoretical background and explanations.

## License
This project is for educational purposes.
