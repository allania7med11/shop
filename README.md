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









