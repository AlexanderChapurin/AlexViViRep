Lifecycle:
Examples:
| email                   |name                      | userpassword                       |
| vivitester2@mail.ru     | vivitester2              | 456456456                          |
| vivitester@mail.ru      | #{Generate(Name.name)}   | 456456456                          |

Scenario: Trello

Given I am on a page with the URL 'https://www.trello.com/'
When I click on an element by the xpath '/html/body/header/nav/div[2]/a[2]'
When I enter `<email>` in field located `By.xpath(//input[@id="email"])`
When I click on an element by the xpath '//input[@id="signup-submit"]'
When I wait until element located `By.xpath(//input[@id="displayName"])` appears
When I enter `<name>` in field located `By.xpath(//input[@id="displayName"])`
When I enter `<userpassword>` in field located `By.xpath(//input[@id="password"])`
When I click on element located `By.xpath(//*[@id="signup-submit"]/span)`
