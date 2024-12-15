# Robot Framework Automation Project

## Project Overview
This project is an automated test suite created using **Robot Framework** with a **Page Object Model (POM)** design pattern. The project follows best practices for test automation by organizing the test scripts, page objects, and custom keywords for maintainability and scalability. The tests are deployed and executed on **Azure Pipelines** for continuous integration and continuous delivery (CI/CD).

## Project Structure

- **`TestCases/`**: Contains the test cases organized by functionality.
  
- **`PageObjects/`**: Contains reusable libraries and common functions.
  
- **`resources/`**: Contains individual page-specific keyword files and custom keywords. Shared resources, including test data, configurations, or other assets.

- **`AzurePipeline.yaml`**: Configuration file to deploy and run tests in Azure Pipelines.
