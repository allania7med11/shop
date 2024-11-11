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

```bash
docker-compose up
```

This will start the following services:

- **db**: A PostgreSQL database container, which loads initial data from `/db/shop_db_init.sql`.
- **shop_back**: The Django backend service, accessible at `http://localhost:8000`.
- **shop_front**: The Next.js frontend service, accessible at `http://localhost:3000`.
- **nginx**: A reverse proxy for the frontend and backend, accessible at `http://localhost:4000`.
- **shop_e2e**: The Playwright end-to-end testing service, which runs only when needed for testing.

### 4. Run Backend Tests

To execute backend tests with pytest, use the following command within the `shop_back` container:

```bash
docker container exec -it shop_back pytest
```

This command will run all tests defined in the Django backend.

### 5. Run Frontend Tests

To run frontend end-to-end tests with Playwright, use the following command:

```bash
docker-compose --profile test up shop_e2e
```

This command runs all Playwright tests in the frontend testing suite. These tests simulate backend responses to focus on the frontend application, ensuring it functions as expected.

## Documentation

The software's API is well-documented and accessible via Swagger at the following URL:

- **API Documentation**: [https://shop.effectivewebapp.com/api/](https://shop.effectivewebapp.com/api/)

This documentation provides a comprehensive overview of all available endpoints, request parameters, and response formats, making it easy for developers to understand and integrate with the API.


## Continuous Integration (CI)

This project follows best practices in **Continuous Integration (CI)** to ensure code quality and consistency throughout the development process. These CI tools and practices reflect a commitment to delivering reliable software and maintaining professional standards, essential for high-impact roles.

### Frontend CI

For the frontend, **Husky** and **Lint-Staged** are used to enforce code quality checks. Husky runs linting commands at the commit stage, ensuring that any issues are caught early in the development cycle. **Lint-Staged** optimizes this by running checks only on staged files, keeping the process efficient. **ESLint** and **Prettier** provide consistent formatting and error detection, especially with TypeScript support, helping to maintain high standards in frontend code.

### Backend CI

The backend uses **pre-commit hooks** with tools like **isort** for organizing imports, **Black** for enforcing formatting, and **Flake8** for syntax checking. These tools ensure that each commit adheres to best practices, making the backend codebase clean, consistent, and easier to maintain.

### Continuous Delivery (CD)

This project follows **Continuous Delivery (CD)** practices, with automation managed by **Ansible** in a dedicated deployment repository: [deploy](https://github.com/allania7med11/deploy). The CD pipeline utilizes a **staging environment** on **Multipass** to replicate production, ensuring reliable testing and validation before deployment to production.

#### Automated Deployment Pipeline

The deployment process includes the following automated steps:

1. **Environment Setup**: Ansible provisions a **staging environment** on **Multipass** that mirrors production, allowing for pre-deployment testing in a controlled, production-like environment.

2. **Repository Management**: Ansible clones the necessary repositories, ensuring the latest code is ready for deployment.

3. **Building Docker Images**: Using Docker, Ansible builds images for both frontend and backend services, maintaining consistency between staging and production environments.

4. **Project Execution**: Ansible runs the backend and frontend services in staging and generates static files for the frontend.

5. **Testing**: With the services running in staging, tests are executed to verify functionality, ensuring that updates work as expected without regressions.

6. **Artifact Generation**: If tests pass, the backend Docker image is pushed to **Docker Hub**, and the frontend static files are uploaded to **Google Drive**.

7. **Staging and Production Updates**:
   - **Staging**: After successful testing in staging, the new Docker image and static files are deployed for final review.
   - **Production**: Once staging verification is complete, Ansible handles the production update by:
     - Pulling the backend image from Docker Hub and updating the backend container in production.
     - Fetching and deploying the latest frontend static files from Google Drive.

#### Semaphore UI Integration

The project also integrates **Semaphore UI** to simplify the management of various tasks in the deployment process. Semaphore provides an accessible interface for handling tasks such as database backups and managing deployment stages, ensuring that maintenance and operational tasks can be easily executed as needed.

By using Ansible, Docker, and Semaphore, this pipeline provides a comprehensive and automated solution for continuous delivery, reflecting best practices essential for high-quality, professional software delivery.



## Monitoring and Error Tracking

For production monitoring, **Sentry** is integrated into the backend using the **SENTRY_DSN** environment variable. This setup allows for real-time tracking of errors, providing insights into issues as they arise in production. By monitoring for unexpected errors and performance issues, Sentry enables rapid response to any problems, helping maintain a smooth user experience.

## Project Links
- **Deployment**: [https://shop.effectivewebapp.com/](https://shop.effectivewebapp.com/)








