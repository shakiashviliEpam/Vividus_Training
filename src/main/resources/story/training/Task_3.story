
Scenario: Go to SauceDemo and login
When Navigate to SauceDemo
When Log in as a Good User
Then `${current-page-url}` is equal to `https://www.saucedemo.com/v1/inventory.html`
Then number if elements found by`(xpath(//*[@class="inventory_item_name"]))` is equal to `1`
When I take screenshot
