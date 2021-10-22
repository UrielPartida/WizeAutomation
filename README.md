# WizeAutomation
Automation of the saucedemo page for the wizeline automation bootcamp selection challenge 

# Prerequisites

- [Python 3](https://www.python.org/downloads/)
- [Pip](https://pip.pypa.io/en/stable/installation/)
- [ChromeDriver](https://chromedriver.chromium.org/downloads)
- [GeckoDriver](https://github.com/mozilla/geckodriver/releases)

## Installation

1. Clone the repository and access the project folder
```shell
git clone https://github.com/UrielPartida/WizeAutomation.git
cd WizeAutomation/desktop_tests
```

2. Install the packages

With the use of pip we will install these two packages
```shell
pip install robotframework
```
```shell
pip install --upgrade robotframework-seleniumlibrary
```
After downloading chromedriver and gecko driver you'll need to add them to your path, you can follow this ([link](https://www.browserstack.com/guide/run-selenium-tests-using-selenium-chromedriver)) tutorial to do it


3. Ready to run the tests

## How to run test cases
The way to provide data to the test cases is with the -v command, you can change the data you send to the test cases. Example -v username:user1 or -v username:user2

A.- Login with a valid user
```shell
robot --test Valid_User_login -v browser:firefox -v username:standard_user -v password:secret_sauce .\saucedemo_auto.robot
```

B.- Login with an invalid user
```shell
robot --test Invalid_User_login -v browser:firefox -v username:not_user -v password:secret .\saucedemo_auto.robot
```

C.- Logout from the home page
```shell
robot --test User_Logout -v browser:firefox -v username:standard_user -v password:secret_sauce .\saucedemo_auto.robot
```

D.- Sort products by Price (low to high)
```shell
robot --test Sort_Products_Low_To_High -v browser:firefox -v username:standard_user -v password:secret_sauce .\saucedemo_auto.robot
```

E.- Add multiple items to the shopping cart
```shell
robot --test Add_Multiple_Items -v browser:firefox -v username:standard_user -v password:secret_sauce .\saucedemo_auto.robot
```

F.- Add the specific product ‘Sauce Labs Onesie’ to the shopping cart
```shell
robot --test Add_Onesie_To_Cart -v browser:firefox -v username:standard_user -v password:secret_sauce .\saucedemo_auto.robot
```

G.- Complete a purchase
```shell
robot --test Complete_Purchase -v browser:firefox -v username:standard_user -v password:secret_sauce -v fName:Robert -v lName:secret -v zipcode:51247 .\saucedemo_auto.robot
```
## Reports
The reporting tool is the log.html generated after the test run
