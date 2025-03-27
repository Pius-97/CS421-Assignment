# CS 421 Assignment 1 - API Development & Deployment

A Spring Boot API with PostgreSQL backend deployed on AWS with Nginx.

## Features
- `/students` endpoint returns student data
- `/subjects` endpoint returns Software Engineering curriculum

## Setup
1. Install Java 17+, PostgreSQL
2. Clone repository
3. Configure database in `application.properties`
4. Run `mvn spring-boot:run`

## Deployment
- AWS EC2 Ubuntu instance
- Nginx reverse proxy
- PostgreSQL database