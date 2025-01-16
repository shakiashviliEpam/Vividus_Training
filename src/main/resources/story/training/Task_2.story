GivenStories: story/demo/Homepage_Demo.story

Scenario: Log in as a Good User
When I enter `${swagGoodUserName}` in field located by`(xpath('//*[@id="user-name"]'))`
When I enter `${swagPassword}` in field located by`(xpath('//*[@id="password"]'))`
When I click on element located by`(xpath('//*[@id="login-button"]'))`
Then `${current-page-url}` is equal to `https://www.saucedemo.com/v1/inventory.html`
Then number if elements found by`(xpath(//*[@class="inventory_item_name"]))` is equal to `1`
When I take screenshot
