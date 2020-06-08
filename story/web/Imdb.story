Description: IMDb;

Scenario: Sign In
Given I am on a page with the URL 'https://www.imdb.com/'
When I click on element located `By.xpath(//div[text()='Sign In'])`
When I click on element located `By.xpath(//span[text()='Sign in with IMDb'])`
When I enter `nilsp16@gmail.com` in field located `By.xpath(//input[@type='email'])`
When I enter `11jack11` in field located `By.xpath(//input[@type='password'])`
When I click on element located `By.xpath(//input[@id='signInSubmit'])`


Scenario: Searching for movie
When I enter `Lock, Stock and Two Smoking Barrels` in field located `By.xpath(//input[@type='text'])`
When I click on element located `By.xpath(//button[@id='suggestion-search-button'])`
When I click on element located `By.xpath(//*[@id="main"]/div/div[2]/table/tbody/tr[1]/td[2]/a)`


Scenario: Adding movie to watchlist
When I click on element located `By.xpath(//div[text()='Add to Watchlist'])`
When I click on element located `By.xpath(//*[text()='Watchlist'])`
When I select `Alphabetical` from drop down located `By.xpath(//*[@id='lister-sort-by-options'])`


Scenario: Exporting watchlist
When I click on element located `By.xpath(//a[text()='Export this list'])`
When I set browser cookies to the API context
When I issue a HTTP GET request for a resource with the URL 'https://www.imdb.com/list/ls098454490/export'
Then the responce body CONTAINS 'Lock, Stock and Two Smoking Barrels'
Then response code is equal to `200`
