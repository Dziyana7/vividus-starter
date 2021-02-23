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
When I click on element located `By.xpath(//*[@id="signup-submit"]/span/span/span)`
Then the page title is equal to 'Welcome, <fullname>'

Examples:
|email                |fullname|password    |
|test1m@mailinator.com|user1   |1234567890Qq|
|test2m@mailinator.com|user2   |1234567890Qq|
|test3m@mailinator.com|user1   |1234567890Qq|

Scenario: Create yor Trello team
When I enter `MyTeam` in field located `By.xpath(//*[@id="moonshotCreateTeam"])`
When I select `Other` in dropdown located `//div[@class="css-196czu8"]`
When I click on element located `By.xpath(//*[@id="signup-submit"]/span/span/span)`
Then the page title is equal to 'Try Business Class for 30 days'

Scenario: Final step
When I click on element located `By.xpath(//button[@class="_2rYx24i4YFfVIi"])`
When I click on element located `By.xpath(//button[@class="p9S6e94xTDpLPQ voB8NatlbuEme5 gkv95EhjCrfcEU"])`
Then the page with the URL '//getting-started' is loaded