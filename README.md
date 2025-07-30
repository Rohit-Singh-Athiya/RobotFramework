# RobotFramework Web Automation Suite

This repository contains a collection of automated test cases and reusable keywords using [Robot Framework](https://robotframework.org/) and [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/latest/SeleniumLibrary.html) to test the [JPetStore Demo Application](https://petstore.octoperf.com/actions/Catalog.action).

## Table of Contents

- [Overview](#overview)
- [Project Structure](#project-structure)
- [Features](#features)
- [Getting Started](#getting-started)
- [Running Tests](#running-tests)
- [Custom Keywords](#custom-keywords)
- [Contributing](#contributing)
- [License](#license)

---

## Overview

This suite automates critical user flows for the JPetStore Demo, including:
- User registration
- Login functionality
- Browsing pet categories (fish, dogs, cats, reptiles, birds)
- Adding items to the cart and updating quantities
- Performing checkout and verifying order status

The suite is modular, leveraging Robot Framework's best practices with:
- Test cases organized by feature
- Keyword-driven approach for reusability
- Externalized locators and data

---

## Project Structure

```
RobotFramework/
├── TestCases/
│   ├── Checkout.robot          # End-to-end purchase flow
│   ├── sanityTest.robot        # Basic accessibility and UI checks
│   └── UserCreation.robot      # Registration and user creation flow
├── Resources/
│   ├── createPaymentKeywords.robot    # Payment and checkout keywords
│   ├── generalKeywords.robot          # Common browser and login keywords
│   └── registrationKeywords.robot     # Registration process keywords
├── PageObjects/
│   ├── locators.robot         # All UI element locators
│   └── urls.robot             # Application URLs
├── helperMethods/
│   └── emailGeneration.py     # Dynamic email address generation
└── README.md
```

---

## Features

- **Keyword-Driven**: Custom keywords for user actions, registration, payment, and more.
- **Maintainable Locators**: Centralized object locators for easy updates.
- **Reusable Utilities**: Helper Python methods for dynamic data (e.g., unique email generation).
- **Modular Test Cases**: Clean separation of test scenarios and supporting keywords.
- **SeleniumLibrary Integration**: Browser automation and UI validation.
- **Cross-Browser Support**: Easily extensible to run on different browsers.

---

## Getting Started

### Prerequisites

- Python 3.6+
- [pip](https://pip.pypa.io/en/stable/)
- [Robot Framework](https://robotframework.org/)
- [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/latest/SeleniumLibrary.html)
- WebDriver for your browser (e.g., ChromeDriver)

### Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/Rohit-Singh-Athiya/RobotFramework.git
   cd RobotFramework
   ```

2. Install dependencies:
   ```bash
   pip install robotframework selenium robotframework-seleniumlibrary
   ```

3. Download the appropriate WebDriver and ensure it's in your system PATH.

---

## Running Tests

You can run all tests or specific suites using Robot Framework's CLI.

- **Run all test cases:**
  ```bash
  robot TestCases/
  ```

- **Run a specific test suite:**
  ```bash
  robot TestCases/Checkout.robot
  ```

- **Generate reports:**
  Robot Framework automatically generates an `output.xml`, `report.html`, and `log.html` after each run.

---

## Custom Keywords

The `Resources/` folder contains reusable keyword files:

- **generalKeywords.robot**: Browser operations, login, and element checks.
- **registrationKeywords.robot**: Steps for user registration, account info, and profile selection.
- **createPaymentKeywords.robot**: Cart management, payment, and billing processes.

Python-based keywords are in `helperMethods/` (e.g., `generate_email` for unique test accounts).

---

## Contributing

Contributions are welcome! Please open issues or submit pull requests for improvements, new features, or bug fixes. For major changes, open an issue first to discuss your proposal.

---

## License

This project is licensed under the MIT License.
