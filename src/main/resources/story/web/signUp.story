Scenario: Open the Trello.com
Given I am on the main application page
Then the page title is equal to 'Trello'

Scenario: Fillig 'Sign Up' form
When I enter `<email>` in field located `By.xpath(/html/body/section[1]/div/div/div[2]/form/div[1]/input)`
When I click on element located `By.xpath(/html/body/section[1]/div/div/div[2]/form/div[2]/button)`
When I click on element located `By.xpath(//*[@id="displayName"])`
When I enter `<fullname>` in field located `By.xpath(//*[@id="displayName"])`
When I enter `<password>` in field located `By.xpath(//*[@id="password"])`
When I click on element located `By.xpath(//*[@id="signup-submit"]/span/span/span)`
Then the page load time should be less than '15000' milliseconds

Examples:
|email                  |fullname   |password    |
|test123m@mailinator.com|user123    |1234567890Qq|

Scenario: Create yor Trello team
When I enter `MyTeam` in field located `By.xpath(//*[@id="moonshotCreateTeam"])`
When I select `Other` in dropdown located `//div[@class="css-196czu8"]`
When I click on element located `By.xpath(//*[@id="recaptcha-verify-button"])`
When I click on element located `By.xpath(//*[@id="recaptcha-verify-button"])`
Then the page title is equal to 'Try Business Class for 30 days'

Scenario: Final step
When I click on element located `By.xpath(//button[@class="_2rYx24i4YFfVIi"])`
When I click on element located `By.xpath(//button[@class="p9S6e94xTDpLPQ voB8NatlbuEme5 gkv95EhjCrfcEU"])`
Then the text 'Welcome, <fullname>' exists