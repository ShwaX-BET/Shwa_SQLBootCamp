# SQL Bootcamp Migration Base Project

This project serves as a base from which apprentices can build up their SQL databases overtime in accordance with the SQL bootcamp.

The project is designed in a way that an apprentice can submit their SQL scripts in the form of a database migration. This allows for it to be reviewed by coaches in a similar manner to the Merge Requests in the rest of the bootcamp.

## Apprentice Explanation

As an apprentice you do not need a deep understanding of the technologies being utilized as part of this project. They are merely forming a base from which you can add you SQL scripts to. In saying that we will not discourage you from reading up on docker or database migrations, in general just be a mindful that this particular learning will come later.

## Prerequisites

Before you begin, ensure you have met the following requirements:

- Docker Desktop installed
- Microsoft SQL Server Management Studio installed
- Read this entire document

## Getting Started

1. Start the services
**Using the terminal**
```bash
docker compose up -d
```

## Database Migrations

The project uses Flyway for database migrations. Migration files are located in the `sql/migrations` directory.
**Using the terminal**
To run migrations manually:
```bash
docker compose up -d flyway
```

## Project Structure

```
sql-bootcamp/
├── docker-compose.yml  # Docker services configuration
├── .env                # Variable file for Docker Compose
├── sql/                
│   ├── init/
|   |    └── CreateDatabase.sql # Used to Create Practice Database on docker compose up
│   └── migrations/
|        └── V1__CreateTableExample.sql # Files that you might add as part of the bootcamp
└── README.md           # This file
```

## Connecting to SQL Server

This project will spin up a server instance, you can connect to it with the following details:

![Login Details Screenshot](/img/login-screenshot.png)

### Details in Screenshot

- Server Name: localhost,1433
- Login: sa
- Password: Tot@llyStr0ng!PassworD

## Development

All development (i.e Adding Tables and Populating data) will be done on the "Exercise" Database that is created as part of this base project. Migration's are run on this database.

Be careful about making any changes on the database directly and not through the migrations. If you do want to make changes directly on the database be sure to delete the volume and do a docker compose up again just so you can get a fresh database and test your migrations.

### Adding New Migrations

1. Create a new SQL file in the `migrations` directory
2. Follow the naming convention: `V{number}__{description}.sql`
3. Write your SQL statements
4. Run the migrations

### Reset and Rebuild your Database

As mentioned above if you make changes directly to your Database you will need to delete the volume attached to your the SQL docker container. You can do this with the docker compose down command by adding the *-v* parameter.

*Just for your own curiousity volumes are used to maintain persistence between containers(which are designed to be disposable).*

**Obviously this will delete your containers and SQL database data, requiring you to do a docker compose up as mentioned above.**

You can do so with the following steps:
**Using the terminal**
1. Delete the Stack created by the compose file:
```bash
docker compose down -v
```