var webdriver = require('selenium-webdriver');
 
var driver = new webdriver.Builder().
   withCapabilities(webdriver.Capabilities.firefox()).
   build();
 
driver.get('http://www.google.com');
driver.findElement(webdriver.By.name('q')).sendKeys('micrometre.co.uk');
driver.findElement(webdriver.By.name('btnG')).click();
driver.quit();
