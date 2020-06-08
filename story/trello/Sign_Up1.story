Description: Simple story to sign_up trello.com

Scenario: Sign-up new user

Given I am on a page with the URL 'https://www.trello.com/'
When I click on an element by the xpath '/html/body/header/nav/div[2]/a[2]'
When I enter `${useremail}` in field located `By.xpath(//input[@id="email"])`
When I click on an element by the xpath '//input[@id="signup-submit"]'
When I wait until element located `By.xpath(//input[@id="displayName"])` appears
When I enter `${name}` in field located `By.xpath(//input[@id="displayName"])`
When I register new user
When I click on element located `By.xpath(//*[@id="signup-submit"]/span)`
