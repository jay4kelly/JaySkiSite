require 'selenium-webdriver'
require 'capybara'
require 'capybara/dsl'
require 'nokogiri'
class SiteVisitor
include Capybara::DSL
def initialize(mountain)
@mountain = mountain
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

#visit "https://www.google.com"
visit "https://www.google.com/search?q=#{@mountain}"
#find(".RNNXgb").click
#fill_in('q', :with => @mountain).native.send_keys(:return)
sleep(2)

end


  # Wait browser to load



  # Wait browser to load


def print_trails_open()
  begin
  trails_open = find('#uid_0 > div.ifM9O > div:nth-child(2) > div > div > div > div.wo5SM > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div.cuG6ob').text

    #uid_0 > div.ifM9O > div:nth-child(2) > div > div > div > div.wo5SM > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div.cuG6ob').text
    #uid_0 > div.ifM9O > div:nth-child(2) > div > div > div > div.wo5SM > div > div.ByaOAe.wdAYCf > div:nth-child(1) > div.cuG6ob').text
  #  div.hO6Ivc:nth-child(1) > div:nth-child(2)').text
    #uid_0 > div.ifM9O > div:nth-child(2) > div > div > div > div.wo5SM > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div.cuG6ob').text
return trails_open
rescue Capybara::ElementNotFound
  return "an error has occured :("

end
end

def print_lifts_open()
  begin
  open_lifts = find('#uid_0 > div.ifM9O > div:nth-child(2) > div > div > div > div.wo5SM > div:nth-child(1) > div:nth-child(2) > div:nth-child(2) > div.cuG6ob').text
    #uid_3 > div.ifM9O > div:nth-child(2) > div > div > div > div.wo5SM > div > div.ByaOAe.wdAYCf > div:nth-child(2) > div.cuG6ob').text
    #uid_0 > div.ifM9O > div:nth-child(2) > div > div > div > div.wo5SM > div:nth-child(1) > div:nth-child(2) > div:nth-child(2) > div.cuG6ob').text
    return open_trails
 rescue Capybara::ElementNotFound
   return "an error has occured :("
  end
  end
def print_summit_depth()
#depthBaseSummit = find('div.ByaOAe DNjjCd NuspYb').text
begin
summit_depth = find('#uid_0 > div.ifM9O > div:nth-child(2) > div > div > div > div.wo5SM > div:nth-child(2) > div:nth-child(2) > div > table > tbody > tr:nth-child(1) > td:nth-child(1)').text

return summit_depth
rescue Capybara::ElementNotFound
  return "an error has occured :("
 end
end
def print_base_depth()
  begin
base_depth = find('#uid_0 > div.ifM9O > div:nth-child(2) > div > div > div > div.wo5SM > div:nth-child(2) > div:nth-child(1) > div > table > tbody > tr:nth-child(1) > td:nth-child(1)').text
  #uid_0 > div.ifM9O > div:nth-child(2) > div > div > div > div.wo5SM > div:nth-child(2) > div:nth-child(1) > div > table > tbody > tr:nth-child(1) > td:nth-child(1)').text
                #  div.sv0TIc:nth-child(2) > div:nth-child(1)
return base_depth
rescue Capybara::ElementNotFound
  return "an error has occured :("

end
end
def print_summit_temp
  begin
summit_temp = find('#uid_0 > div.ifM9O > div:nth-child(2) > div > div > div > div.wo5SM > div:nth-child(2) > div:nth-child(2) > div > table > tbody > tr:nth-child(1) > td:nth-child(3)').text
return summit_temp
rescue Capybara::ElementNotFound
  return "an error has occured :("

end
end
def print_base_temp
  begin
  base_temp = find('#uid_0 > div.ifM9O > div:nth-child(2) > div > div > div > div.wo5SM > div:nth-child(2) > div:nth-child(1) > div > table > tbody > tr:nth-child(1) > td:nth-child(3)').text
  return base_temp
rescue Capybara::ElementNotFound
    return "an error has occured :("

  end
end
end
