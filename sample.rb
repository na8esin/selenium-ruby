require "selenium-webdriver"

#options = Selenium::WebDriver::Options.chrome
options = Selenium::WebDriver::Chrome::Options.new(args: ['headless'])

driver = Selenium::WebDriver.for :remote, url: "http://chromium:4444/wd/hub", options: options
driver.get "https://www.google.com/"
driver.save_screenshot('hoge.png')

# たとえ例外が発生しようとも、ちゃんと終了させないとダメっぽい
driver.quit
