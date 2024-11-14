# Sauce Demo UI Testing

## Description
This project automates UI testing for Sauce Demo using Robot Framework and Selenium Library.

## Prerequisites
- Python 3.13
- Google Chrome and ChromeDriver
- PyCharm Community Edition 2024.2.4
- Plugin - Robot Framework Language Server

### Installation Steps
1. Clone the repository:
   ```bash
   git clone https://github.com/YinYinMon/Robot-Framework.git
   cd Robot-Framework

## Run the Script
    # Run via PyCharm Community Edition **
    # Rebuild and Run tests :
        - robot -d Results Tests/saucedemo.robot

## Test Details
Test 1
- Logs into the Sauce Demo website using standard user credentials.
- Adds first two items to the shopping cart.
- Validates that the correct items are in the cart.
- Proceeds to checkout and verifies items and totals.

Test 2
- Logs into the Sauce Demo website using standard user credentials.
- Open Cart without no selection on products
- Check "Checkout" button is not having
