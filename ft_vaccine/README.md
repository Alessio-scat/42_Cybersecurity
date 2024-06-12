# SQL Injection Guide

## Overview

SQL injection is a code injection technique that exploits vulnerabilities in an application's software by inserting malicious SQL code into a query. This guide covers the different types of SQL injections and their prevention methods.

## Types of SQL Injections

### 1. Classic SQL Injection
- **Error-Based SQL Injection**: Exploits database error messages to gain information about the database structure.
- **Union-Based SQL Injection**: Leverages the UNION SQL operator to combine the results of multiple SELECT statements to extract data from other tables.
- **Boolean-Based SQL Injection (Inferential)**: Sends queries that force the database to return true or false results, allowing attackers to infer information.

### 2. Blind SQL Injection
- **Time-Based Blind SQL Injection**: Uses database delays to determine if a statement is true or false based on the response time.
- **Content-Based Blind SQL Injection**: Alters the content returned by the application to infer database structure and content.

### 3. Out-of-Band SQL Injection
Uses methods like DNS or HTTP requests to collect data when in-band SQL injection techniques are not possible due to network restrictions.

### 4. Second-Order SQL Injection
Occurs when malicious user input is stored in the database and executed later by a different part of the application.

### 5. Stored Procedures SQL Injection
Targets stored procedures in the database, executing arbitrary commands if the procedures are not properly sanitized.

### 6. SOAP SQL Injection
Targets web services using SOAP by injecting SQL commands into SOAP requests.

### 7. XML SQL Injection
Exploits vulnerabilities in applications processing XML data by injecting SQL code into XML elements or attributes.

### 8. HTTP Headers SQL Injection
Manipulates HTTP headers (e.g., User-Agent, Referer, or Cookie) to inject SQL commands into the application if headers are not properly sanitized.

**What is a User-Agent?**

    The User-Agent is a string sent by your web browser to a web server when you visit a website. It tells the server what kind of browser and operating system you're using.

## Legal Websites for Testing:
Damn Vulnerable Web Application (DVWA)

**URL**: http://www.dvwa.co.uk/
Description: DVWA is a PHP/MySQL web application that is damn vulnerable. It is designed for security professionals to test their skills and tools in a legal environment.
Vulnerable Web Applications on VulnHub

**URL**: https://www.vulnhub.com/
Description: VulnHub provides machines that are vulnerable by design. You can download and run these machines in your local environment for testing.
OWASP WebGoat

**URL**: https://owasp.org/www-project-webgoat/
Description: WebGoat is a deliberately insecure application that allows developers to practice identifying and exploiting vulnerabilities.
Google Gruyere

**URL**: http://google-gruyere.appspot.com/
Description: A web application intentionally designed with vulnerabilities to help users learn about web security issues.

## Prevention Methods

- **Parameterized Queries (Prepared Statements)**: Ensure SQL code is not mixed with data by using parameterized queries.
- **Stored Procedures**: Use well-defined stored procedures that accept only specific types of inputs.
- **Escaping Inputs**: Properly escape and sanitize all user inputs before using them in SQL queries.
- **ORMs (Object-Relational Mappers)**: Use ORM frameworks to abstract SQL queries and reduce direct interaction with SQL.
- **Database Permissions**: Limit database permissions to the minimum required for the application to function.
- **Input Validation**: Validate all inputs on the server side to ensure they conform to expected formats.
- **Web Application Firewalls (WAF)**: Use WAFs to filter out malicious requests.

## Conclusion

Understanding the different types of SQL injections and implementing strong defensive measures can significantly reduce the risk of SQL injection attacks. By following the prevention methods outlined in this guide, you can help secure your application against these vulnerabilities.
