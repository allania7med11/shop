# Shoppingify Website

Shoppingify is a full-stack web application that combines a **Django** backend, a **Next.js** frontend, and utilizes **Playwright** for end-to-end testing. All components run within Docker containers, eliminating the need for manual installations.

## Repositories

To get started, clone the following repositories:

- **Backend**: [shop_back](https://github.com/allania7med11/shop_back)
- **Frontend**: [shop_front](https://github.com/allania7med11/shop_front)
- **End-to-End Tests**: [shop_e2e](https://github.com/allania7med11/shop_e2e)

## Setup Instructions

### 1. Clone the Repositories

Open your terminal and run:

```bash
git clone https://github.com/allania7med11/shop_back
git clone https://github.com/allania7med11/shop_front
git clone https://github.com/allania7med11/shop_e2e
```

### 2. Add Environment Variables

Each project requires a `.env` file with specific environment variables. Please refer to the README file in each repository for detailed instructions on what variables are needed and how to configure them:

- **Backend**: Instructions in `shop_back/README.md`
- **Frontend**: Instructions in `shop_front/README.md`
- **End-to-End Tests**: Instructions in `shop_e2e/README.md`

### 3. Run the Project

To run the project with Docker, ensure all necessary `.env` files are configured as described in each repository’s README, and execute the following command from the project root:

\```bash
docker-compose up
\```

This will start the following services:

- **db**: A PostgreSQL database container, which loads initial data from `/db/shop_db_init.sql`.
- **shop_back**: The Django backend service, accessible at `http://localhost:8000`.
- **shop_front**: The Next.js frontend service, accessible at `http://localhost:3000`.
- **nginx**: A reverse proxy for the frontend and backend, accessible at `http://localhost:4000`.
- **shop_e2e**: The Playwright end-to-end testing service, which runs only when needed for testing.

### 4. Run Backend Tests

To execute backend tests with pytest, use the following command within the `shop_back` container:

\```bash
docker container exec -it shop_back pytest
\```

This command will run all tests defined in the Django backend.

### 5. Run Frontend Tests

To run frontend end-to-end tests with Playwright, use the following command:

\```bash
docker-compose --profile test up shop_e2e
\```

This command runs all Playwright tests in the frontend testing suite. These tests simulate backend responses to focus on the frontend application, ensuring it functions as expected.
### 6. Monitoring with Sentry

To ensure reliable monitoring and prompt issue tracking in production, **Sentry** is integrated into the backend. This setup captures errors and performance issues, providing real-time insights into any problems users may encounter.

#### Sentry Integration

In the backend, Sentry is configured to monitor errors and capture debugging information with the **`SENTRY_DSN`** environment variable. This variable holds the unique DSN (Data Source Name) that links the backend to your Sentry project. When `SENTRY_DSN` is set in production or QA environments, Sentry will automatically log and report any errors or issues that occur, enabling developers to track and resolve them quickly.

To configure Sentry in production:

1. Set the **`SENTRY_DSN`** variable in the backend’s environment settings or `.env` file.
2. Ensure that error logging is active, especially in production and QA environments, to capture all relevant issues.

With Sentry in place, the backend will automatically monitor for exceptions, helping to maintain a stable and reliable application by alerting the team to any issues as they arise in production.










