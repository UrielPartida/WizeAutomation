# WizeAutomation
Automation of the saucedemo page for the wizeline automation bootcamp selection challenge 

# Prerequisites

- [Python 3](https://www.python.org/downloads/)
- [Pip](https://pip.pypa.io/en/stable/installation/)
- [ChromeDriver](https://chromedriver.chromium.org/downloads)
- [GeckoDriver](https://github.com/mozilla/geckodriver/releases)

With the use of pip we will install these two packages
```shell
pip install robotframework
```
```shell
pip install --upgrade robotframework-seleniumlibrary
```

Steps to use the drivers https://www.browserstack.com/guide/run-selenium-tests-using-selenium-chromedriver

To run the test cases:
Open a terminal/command prompt, cd to the folder desktop_test containing the saucedemo_auto.robot file

Example:
```shell
cd C:\Users\1072738124\PycharmProjects\WizeAutomation\desktop_tests
```

Comands to run the test cases:
The way to provide data to the test cases is with the -v command, you can change the data you send to the test cases. Example -v username:user1 or -v username:user2
The reporting tool is the log.html generated after the test run

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

