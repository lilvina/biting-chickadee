# biting-chickadee

# Pizza Restaurant: RDB Schema with CRUD API

## Challenge Rubric

This goal will likely be within your ZPD if you...

- Can set up a relational database
- Can write basic SQL queries
- Can build web apps with basic CRUD functionality
- Are familiar with relational schema design
- Are familiar with RESTful API design
- Are interested in learning CRUD (Create, Read, Update, Delete) relational database interactions
- Are interested in translating product specs into a web API to satisfy them

## Description

Piccadilly Pizza is a diamond in the rough: their deep dish is the bomb dot com, but they're just breaking even because they lack the easy-to-use online ordering interface that will give them a competitive edge.

Your job is to design a schema based on the guidelines Piccadilly Pizza has provided, complete with a programmatic component that allows for basic to CRUD operations on the data.

As a proof of concept, you will first create an E-R diagram that specifies the relationships between these data types, similar to [this one](http://www.conceptdraw.com/How-To-Guide/picture/erd-entity-relationship-diagram-symbols/SOFTWARE-DEVELOPMENT-ERD-Entity-Relationship-Model-Diagram.png). You can use a tool like [Draw.io](https://www.draw.io/?splash=0&libs=er;general;advanced;uml;basic;flowchart;arrows), [WWW SQL Designer](http://ondras.zarovi.cz/sql/demo/) or [MySQL Workbench](https://www.mysql.com/products/workbench/) to create this diagram ([here's](https://www.mysql.com/common/images/products/MySQL_Workbench_Visual_Design_Mac.png) an example).

Your job is also to provide a basic web API that provides the ability to CRUD the data in each of these tables. [Designing a RESTful API With Node and Postgres](http://mherman.org/blog/2016/03/13/designing-a-restful-api-with-node-and-postgres/#.WAqKX5MrKRt) is a great resource for getting started - please adapt the implementation to your own needs.

Use the product/user stories from the specs to guide the design of your database schema and API.

Acronyms from title:

- RDB = Relational DataBase
- CRUD = Create, Read, Update, Delete
- API = Application Programming Interface

## Context

This project will give you experience in designing a robust schema that represents a complex, real-world system as well as an introduction to how to update your DB without having to worry too much about complex join operations.

The suggested prerequisite goals are [#96 - Foundational Relational Database Exercises](./96-Foundational_Relational_Database_Exercises.md) and [#69 - Simple Book Store](./69-Simple_Book_Store.md).

Before diving in, it is **strongly recommended** to review the video and code from @tannerwelsh's remote cognitive apprenticeship session: [Relational DB schema design for a bookstore](https://github.com/GuildCrafts/cog-app/tree/master/sessions/02-bookstore-db-schema-20161026).

## Specifications

**Product/User Stories**

###The quality specs that are not checked off are not relevant to this project's core specs. There is a PR made to Tanner to remove these specs from the project.

- [x] Can track all **customers** and any relevant customer information, including but not limited to...
  - [x] customer ID
  - [x] name
  - [x] username/login details
  - [x] delivery address(es)
  - [x] phone number(s)
  - [x] payment methods on file (e.g., cash, credit, check - if credit, then the card number should also be stored)
- [x] Can track each customer's pizza **preferences**
- [x] Can track the **ingredients** that comprise each of these preferences (e.g., onions, ham, pineapple, anchovies, bacon, etc.)
- [x] Can track standard **drinks**, including...
  - [x] a product ID
  - [x] drink description
  - [x] manufacturer
  - [x] supplier
  - [x] price
- [x] Can track **pizza** data:
  - [x] sizes (small, medium, large, extra large)
  - [x] types (thick or thin crust)
  - [x] **ingredients** (pepperoni, sausage, mushrooms, onions, cheese, etc.)
  - [x] price data for these pizza sizes and ingredients
  - [x] happy hour price discounts

**Other**
- [X] The artifact is a GitHub repo
- [X] There are commands provided (using `npm run` and/or with executable scripts in a `bin/` directory) to:
  - [X] Create the database
  - [X] Drop the database
  - [X] Insert sample/seed data to the database
  - [X] Start the web server
- [X] SQL files are well formatted and readable.
- [X] All the SQL keywords are capitalized.
- [X] The E-R diagram minimizes data redundancy.
- [X] Table names are singular, not plural.
- [ ] Variables, functions, files, etc. have appropriate and meaningful names.
- [ ] Functions are small and serve a single purpose.
- [X] Code is well organized into a meaningful file structure.
- [ ] Code is reasonably tested with a test suite.
- [X] The artifact produced is properly licensed, preferably with the [MIT license](https://opensource.org/licenses/MIT).

HINT: if you see an item in bold, you may want to consider creating a table for that item. :)

Please feel free to adapt the content of the data to your personal preferences or adjust your schema to support any other data types or operations you can think of.

[Get creative](https://www.youtube.com/watch?v=9C_HReR_McQ)!

### Stretch

- [ ] Maintains a history of **transactions** of all purchases including...
  - [ ] price
  - [ ] payment method
  - [ ] delivery date
- [ ] Supports an interface for delivery **drivers**, tracking...
  - [ ] the addresses each driver delivers to
  - [ ] the dates/times of delivery
  - [ ] money collected (including tips)
- [ ] Supports calculating the proper sales tax (the pizza joint located at the intersection of the four corners of the US, so you might have to support sales taxes for Colorado, Arizona, New Mexico and Utah)
- [ ] API documentation is included in the repo with details on each route, parameters/headers needed, and the structure of returned data
- [ ] A simple web user interface exists that allows users CRUD the data in the specification (this interface can be as simple as a checkbox that "orders" a pizza by creating a DB record in one of your tables)
- [ ] Implements a testing suite (mocha/chai)

**Entity Relationship Diagram**

- [ ] The E-R diagram...
  - [ ] Supports all the product/user stories
  - [ ] Indicates whether or not each relationship in the schema is is one to one, one to many, or many to many
  - [ ] Contains a list of attributes for each entity and relationship
  - [ ] Contains the SQL data types of each attribute in the schema
  - [ ] Notes any foreign or primary keys in each table in the schema
  - [ ] Is included in the artifact (as a `.png` or some other easily viewable format)

## Resources

- [18+ Best Online Resources for Learning SQL and Database Concepts](http://www.vertabelo.com/blog/notes-from-the-lab/18-best-online-resources-for-learning-sql-and-database)
- [Designing a RESTful API With Node and Postgres](http://mherman.org/blog/2016/03/13/designing-a-restful-api-with-node-and-postgres/#.WAqKX5MrKRt)
