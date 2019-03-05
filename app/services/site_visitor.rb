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

def visit_page(mountain)
visit "https://www.google.com"
find(".RNNXgb").click
fill_in('q', :with => mountain).native.send_keys(:return)

  # Wait browser to load
end

def print_trails_open()
  trails_open = find('#uid_0 > div.ifM9O > div:nth-child(2) > div > div > div > div.wo5SM > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div.cuG6ob').text
return trails_open
end

def print_lifts_open()
  open_lifts = find('#uid_0 > div.ifM9O > div:nth-child(2) > div > div > div > div.wo5SM > div:nth-child(1) > div:nth-child(2) > div:nth-child(2) > div.cuG6ob').text
  return open_lifts
end
def print_summit_depth()
#depthBaseSummit = find('div.ByaOAe DNjjCd NuspYb').text
summit_depth = find('#uid_0 > div.ifM9O > div:nth-child(2) > div > div > div > div.wo5SM > div:nth-child(2) > div:nth-child(2) > div > table > tbody > tr:nth-child(1) > td:nth-child(1)').text
return summit_depth
endh
def print_base_depth()
base_depth = find('#uid_0 > div.ifM9O > div:nth-child(2) > div > div > div > div.wo5SM > div:nth-child(2) > div:nth-child(1) > div > table > tbody > tr:nth-child(1) > td:nth-child(1)').text
return base_depth
end
def print_summit_temp
summit_temp = find('#uid_0 > div.ifM9O > div:nth-child(2) > div > div > div > div.wo5SM > div:nth-child(2) > div:nth-child(1) > div > table > tbody > tr:nth-child(1) > td:nth-child(3)').text
return summit_temp
end
def print_base_temp
  base_temp = find('.wo5SM > div:nth-child(2) > div:nth-child(2) > div:nth-child(1) > table:nth-child(2) > tbody:nth-child(1) > tr:nth-child(1) > td:nth-child(3)')
  return base_temp
end


end
end
