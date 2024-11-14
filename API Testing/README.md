# API Testing with Robot Framework

This repository contains automated tests for a set of API endpoints using **Robot Framework**. The tests cover various HTTP methods (GET, POST, PUT, DELETE) for the API endpoints provided by [FakeStoreAPI](https://fakestoreapi.com/).

### Prerequisites
To run the tests, ensure the following tools are installed on your system:
- Python 3.13
- Robot Framework
- RequestsLibrary
- JSONLibrary
- PyCharm Community Edition 2024.2.4

### Installation Steps
1. Clone the repository:
   ```bash
   git clone https://github.com/YinYinMon/APITesting_RobotFramework.git
   cd APITesting_RobotFramework
   
###  Run Steps 
	- Run via PyCharm Community Edition **
	- Rebuild and Run tests **
    # DELETE Product     : robot -d Results Tests/DeleteProduct.robot 
    # GET Categories     : robot -d Results Tests/GetCategories.robot
    # GET Products       : robot -d Results Tests/GetProducts.robot
    # GET SortedProudcts : robot -d Results Tests/GetSortedProducts.robot
    # POST Product       : robot -d Results Tests/PostProduct.robot
    # PUT Product        : robot -d Results Tests/PutProduct.robot
    
