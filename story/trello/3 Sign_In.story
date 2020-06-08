Scenario: Trello


Given I am on a page with the URL 'https://www.trello.com/'
When I click on element located `By.xpath(//a[@href="/login"])`
When I enter `nilsp16@gmail.com` in field located `By.xpath(//*[@id="user"])`
When I wait until element located `By.xpath(//input[@id="login"])` appears
When I click on element located `By.xpath(//input[@id="login"])`
When I enter `123123123` in field located `By.xpath(//input[@id="password"])`
When I click on element located `By.xpath(//button[@id="login-submit"])`
When I wait until element located `By.xpath(//span[@class="board-tile-fade"])` appears

Scenario: Request
Given request body: {
"name":"doska"
}
When I send HTTP POST to the relative URL '/1/boards?name=doska&key=ecc951f48ccb7f7c551bf530d56b6456&token=fea93eb764ffff1f32526778271076d4f850fe7077d4a1e28e97415b2b69d0bb'
Then the response code is equal to '200'



