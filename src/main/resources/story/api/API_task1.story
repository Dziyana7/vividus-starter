Scenario: Create Trello boad 
Given request body: "key":"c6f29cfbffc7cb37524fa9b2e8cfec20","token":"d462c5d0dacdfd95416d0aee331279c239cb6be62f37b09895e13519be9ff577"
When I send HTTP POST to the relative URL 'https://api.trello.com/1/boards/'
Then the response code is equal to '200'