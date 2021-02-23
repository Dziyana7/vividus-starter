Scenario: Create Trello boad 
Given request body: "key":"68bf70c0e00a4d0def97b13cd01ce796", "token":"1b9795459873b5ff28b711b79d42b39d4422e95485b188b5dc5d56ccedac80c9"
When I send HTTP POST to the relative URL '/boards'
Then the response code is equal to '200'