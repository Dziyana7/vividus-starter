Scenario: Open the Trello.com
Given I am on the main application page
Then the page title is equal to 'Trello'

Scenario: Open the registration page
When I click on element located `By.xpath(/html/body/header/nav/div/a[2])`
Then the page with the URL '${URL1}' is loaded

Scenario: Create 'Sign Up' scenario using page eLenents steps
When I enter `<email>` in field located `By.xpath(//*[@id='email'])`
When I click on element located `By.xpath(//*[@id='signup-submit'])`
When I enter `<fullName>` in field located `By.xpath(//*[@id='displayName'])`
When I enter `<password>` in field located `By.xpath(//*[@id='password'])`
When I click on element located `By.xpath(//*[@id='signup-submit']/span/span/span)`
Then the page title is equal to 'Welcome, <fullName>'

Examples:
|email | fullNane |password|
|test1@mailinator.com|User1| 1234567890Qq|
|test2@mailinator.com|User2| 1234567890Qq|
|test3@maiLinator.com|User3| 1234567890Qq|