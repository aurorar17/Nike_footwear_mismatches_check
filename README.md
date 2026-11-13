# Retail Footwear Recovery | SQL, Python & Tableau

### From a real warehouse problem to a data-driven solution

## The Story Behind This Project

A few years ago, while working in the warehouse of a Nike retail store, I noticed a recurring operational challenge: unpaired shoes.

Every week, we had to identify and manage shoes that had become separated from their matching pair. This was a VERY time-consuming (I remember I used to spend 2 to 3 hours during busy season to try to solve the mismatches), manual process that required attention to detail, problem-solving skills, and a considerable amount of effort to track down potential matches.

This experience made me wonder: Could a data-driven approach make this process faster and more efficient?

Sometimes, a shoe would become separated from its matching pair. These shoes were recorded manually on paper, and finding the missing match meant searching through the inventory of the same store.

I started wondering: **What if we could use data to make this process more efficient?**

What if, instead of limiting the search to one store, we could identify potential matches across multiple locations?

That experience stayed with me. As I began developing my skills in data analytics, I decided to turn this real-world observation into a personal portfolio project.

The goal is to explore how Python, SQL and data visualization could help solve a practical retail inventory problem.

## The Business Problem

An unpaired shoe cannot be sold as a complete pair until its matching shoe is found.

When records are managed manually and searches are limited to individual stores, potential recovery opportunities may be missed.

This project explores a simple idea: **use structured data to connect compatible shoes and identify opportunities for inventory recovery.**

The proposed approach aims to:

- Identify shoes with matching product codes and sizes but opposite sides.
- Prioritize matches within the same store to avoid unnecessary transfers.
- Identify additional matching opportunities between different stores.
- Provide visibility into unpaired inventory and potential recovery opportunities.

## My Approach

I am building this project step by step, following a data analytics workflow.

**1. Python — Data Generation**

I created a synthetic dataset representing unpaired shoes across five fictional store identifiers.

**2. SQL — Matching and Analysis**

Using SQLite, I am developing queries to identify compatible shoes, classify potential matches as internal or cross-store, and validate the matching results.

**3. Tableau — Data Visualization (Planned)**

The final goal is to create an interactive dashboard showing unpaired inventory, potential recovery opportunities and store-level insights.

## Dataset

The dataset currently contains 500 synthetic shoe records.

| Field        | Description                     |
| ------------ | ------------------------------- |
| `shoe_id`    | Unique identifier for each shoe |
| `store_id`   | Store location                  |
| `sku`        | Product code                    |
| `size`       | Shoe size                       |
| `side`       | Left or Right                   |
| `date_found` | Date the shoe was recorded      |

All data is artificially generated for educational purposes.

## Matching Strategy

Two shoes are considered compatible when they share the same SKU and size but have opposite sides.

Matches are divided into two categories:

- **Internal Match:** Both shoes are located in the same store. These are prioritized because no inter-store transfer is required.
- **Cross-Store Match:** The shoes are located in different stores. These represent additional potential recovery opportunities.

An important part of the project is developing reliable one-to-one matching logic so that each shoe can belong to only one recovered pair.

## Tools & Skills

- **Python:** Data generation and automation
- **SQL / SQLite:** Data modeling, joins, CTEs, window functions and validation
- **Tableau:** Data visualization and dashboard development (planned)
- **Git & GitHub:** Version control and project documentation

## Project Status

**In progress**

The initial database structure, SQL matching queries and Python data generator have been created.

The next steps are to improve the synthetic dataset, implement robust matching logic, calculate recovery metrics and develop the Tableau dashboard.

## Why This Project Matters to Me

This project represents the connection between my previous experience in retail operations and my interest in data analytics.

Working in a warehouse helped me understand how small operational problems can affect everyday processes. Learning data analytics has given me a new perspective on those experiences.

**I wanted to build something based on a problem I had actually seen, rather than simply analyzing a dataset without knowing the context behind it.**

For me, this project is an opportunity to practice technical skills while learning how to translate a real business problem into a structured, data-driven approach.

---

**Disclaimer:** This is an independent personal portfolio project inspired by my past work experience. It uses entirely synthetic data and is not affiliated with, endorsed by, or based on internal data from Nike. The operational observations described reflect my personal experience at the time and should not be interpreted as a description of Nike's current processes.
