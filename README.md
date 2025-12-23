# Vehicle Rental System (PostgreSQL)

## Project Overview
This project is a simplified Vehicle Rental System database design.  
It stores information about users, vehicles, and bookings, and supports common queries such as viewing booking details, finding never-booked vehicles, filtering available vehicles, and counting bookings per vehicle.

## Objectives
- Design a relational database using primary keys and foreign keys
- Create an ERD with correct relationships
- Write SQL queries using JOIN, NOT EXISTS, WHERE, GROUP BY, HAVING

## Database Tables
### 1) Users
Stores user information.
- role (Admin/Customer)
- name, email (unique), password, phone_number

### 2) Vehicles
Stores vehicle information.
- name, type (car/bike/truck), model
- reg_number (unique)
- rent_rate (price per day)
- status (available/rented/maintenance)

### 3) Bookings
Stores booking information.
- user_id (FK → users.user_id)
- vehicle_id (FK → vehicles.vehicle_id)
- start_date, end_date
- booking_status (pending/confirmed/completed/cancelled)
- total_cost

## Relationships (ERD)
- One-to-Many: users → bookings (one user can make many bookings)
- Many-to-One: bookings → vehicles (many bookings can be for one vehicle)
- Each booking is linked to exactly one user and one vehicle

## Files Included
- `queries.sql` → contains all required SQL queries (Query 1–4)
- `README.md` → project documentation

## Submission Links
- GitHub Repo: https://github.com/izazalamz/Vehicle-Rental-System-PostgreSQL
- ERD Link: https://drawsql.app/teams/izaz/diagrams/assignment3
- Viva Video Link: https://drive.google.com/drive/folders/10ahJEUJby2ie4qq_G3fP0ATq8vHPc9sa?usp=sharing
