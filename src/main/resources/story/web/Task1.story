Scenario: Open the Trello.com
Given I am on the main application page
Then the page title is equal to 'Trello'

Scenario: Open the registration page
When I click on element located `By.xpath(/html/body/header/nav/div/a[2])`
Then the page with the URL '${URL1}' is loaded

Scenario: Create 'Sign Up' scenario using page eLenents steps
When I enter `<email>` in field located `By.xpath(//*[@id="email"])`
When I click on element located `By.xpath(//*[@id="signup-submit"])`
When I click on element located `By.xpath(//*[@id="displayName"])`
When I enter `<fullname>` in field located `By.xpath(//*[@id="displayName"])`
When I enter `<password>` in field located `By.xpath(//*[@id="password"])`
When I click on element located `By.xpath(//*[@id="signup-submit"]/span/span/span)`
Then the page title is equal to 'Welcome, <fullname>'

Examples:
|email                |fullname|password    |
|test1m@mailinator.com|user1   |1234567890Qq|
|test2m@mailinator.com|user2   |1234567890Qq|
|test3m@mailinator.com|user1   |1234567890Qq|