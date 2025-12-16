# SQL Murder Mystery Game 🔍

A detective-style SQL puzzle game where you solve a murder mystery using SQL queries to investigate clues, interview witnesses, and identify the killer.

![Game Screenshot](game%20image.png)

## 📖 Overview

This project contains SQL queries and solutions for the SQL Murder Mystery game. The objective is to solve a murder case that occurred in SQL City on January 15, 2018, by querying a database and following the clues.

## 🎮 Game Premise

A murder has taken place in **SQL City** on **January 15, 2018**. Your task is to use SQL queries to:
- Examine the crime scene report
- Identify and interview witnesses
- Follow the clues to find the murderer

## 📂 Project Structure

```
SQL MURDER GAME/
├── sql game queries.sql          # SQL queries used to solve the mystery
├── sql-murder-mystery game.sqbpro # SQLite database project file
├── game image.png                # Visual reference/screenshot
└── README.md                     # This file
```

## 🚀 Getting Started

### Prerequisites

- SQLite database browser or any SQL client
- The SQL Murder Mystery database (included in `.sqbpro` file)

### Opening the Database

1. Install [DB Browser for SQLite](https://sqlitebrowser.org/) or your preferred SQL client
2. Open the `sql-murder-mystery game.sqbpro` file
3. Start running queries from `sql game queries.sql`

## 🔎 Investigation Steps

### Step 1: Find the Crime Scene Report

```sql
SELECT type, description 
FROM crime_scene_report 
WHERE type = "murder" 
  AND date = "20180115" 
  AND city = "SQL City";
```

**Result:** Security footage shows there were 2 witnesses:
- The first witness lives at the last house on "Northwestern Dr"
- The second witness, named Annabel, lives somewhere on "Franklin Ave"

### Step 2: Identify the Witnesses

**Find Annabel:**
```sql
SELECT * 
FROM person 
WHERE name LIKE "%annabel%" 
  AND address_street_name = "Franklin Ave";
```

**Find the first witness:**
```sql
SELECT * 
FROM person 
WHERE address_street_name = "Northwestern Dr" 
ORDER BY address_number DESC;
```

**Witness IDs:**
```sql
SELECT id, name 
FROM person 
WHERE name = "Morty Schapiro" 
  OR name = "Annabel Miller";
```

### Step 3: Continue the Investigation

From here, you would:
- Interview the witnesses by checking their statements
- Follow additional clues
- Identify suspects
- Solve the mystery!

## 📊 Database Tables

The database contains several tables including:
- `crime_scene_report` - Crime reports from SQL City
- `person` - Information about people in the city
- `interview` - Witness testimonies
- And more...

To view all tables:
```sql
SELECT name
FROM sqlite_master
WHERE type = 'table';
```

## 💡 Tips

- Read the crime scene report carefully
- Interview all witnesses
- Follow the clues systematically
- Use JOINs to connect information across tables
- Pay attention to specific details (dates, locations, names)

## 🎯 Learning Objectives

This game helps you practice:
- SELECT statements with WHERE clauses
- Filtering with LIKE and wildcards
- ORDER BY and sorting
- JOINs between tables
- Logical thinking and deduction
- SQL query optimization

## 📝 Notes

- The queries in `sql game queries.sql` show the investigation process
- Some queries are exploratory (checking all data)
- Others are targeted based on clues found
- The game teaches SQL through practical problem-solving

## 🏆 Challenge

Can you solve the murder mystery? Follow the clues, write your queries, and find out who committed the crime!

## 📚 Resources

- [SQL Murder Mystery Official Site](https://mystery.knightlab.com/)
- [SQLite Documentation](https://www.sqlite.org/docs.html)
- [SQL Tutorial](https://www.w3schools.com/sql/)

## 🤝 Contributing

Feel free to:
- Add alternative solution queries
- Optimize existing queries
- Document additional investigation paths
- Share insights and tips

## 📄 License

This is an educational project based on the SQL Murder Mystery game created by Northwestern University's Knight Lab.

---

**Happy Investigating! 🕵️‍♂️**
