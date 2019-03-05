require 'selenium-webdriver'
require 'capybara'
require 'capybara/dsl'
require 'nokogiri'
class SiteVisitor
include Capybara::DSL
def initialize()
  # Configurations
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end
Capybara.javascript_driver = :chrome
Capybara.configure do |config|
  config.default_max_wait_time = 10 # seconds
  config.default_driver = :selenium
end
# Visit
browser = Capybara.current_session
driver = browser.driver.browser
end

def visit_Page(mountain)
browser.visit "https://www.google.com"
browser.find(".RNNXgb").click
browser.fill_in('q', :with => mountain).native.send_keys(:return)
end
def print_Trails_Open
  trails_Open = browser.find('#uid_0 > div.ifM9O > div:nth-child(2) > div > div > div > div.wo5SM > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div.cuG6ob').text
return trails_Open
end

def print_Lifts_Open
  open_Lifts = browser.find('#uid_0 > div.ifM9O > div:nth-child(2) > div > div > div > div.wo5SM > div:nth-child(1) > div:nth-child(2) > div:nth-child(2) > div.cuG6ob').text
  return open_Lifts
end
def print_Summit
#depthBaseSummit = find('div.ByaOAe DNjjCd NuspYb').text
summit_Depth = browser.find('#uid_0 > div.ifM9O > div:nth-child(2) > div > div > div > div.wo5SM > div:nth-child(2) > div:nth-child(2) > div > table > tbody > tr:nth-child(1) > td:nth-child(1)').text
return summit_Depth
end
def print_Base
base_Depth = browser.find('#uid_0 > div.ifM9O > div:nth-child(2) > div > div > div > div.wo5SM > div:nth-child(2) > div:nth-child(1) > div > table > tbody > tr:nth-child(1) > td:nth-child(1)').text
return base_Depth
end


visit_Page("Sugarbush")
results = print_data_trails()
p trailsLiftsOpen;
end
