require 'selenium-webdriver'
require 'capybara'
require 'capybara/dsl'
require 'nokogiri'
class SiteVisitor
include Capybara::DSL
def initialize(mountain)
@mountain_name = mountain
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
visit "https://www.google.com/search?q=#{@mountain_name}"
#find(".RNNXgb").click
#fill_in('q', :with => @mountain).native.send_keys(:return)
sleep(1)
end

def print_trails_open()
  return all('.cuG6ob')[1].try(&:text) || "An error has occured"
end

def print_lifts_open()

  return all('.cuG6ob')[2].try(&:text) || "An error has occured"

  #find('#uid_0 > div.ifM9O > div:nth-child(2) > div > div > div > div.wo5SM > div:nth-child(1) > div:nth-child(2) > div:nth-child(2) > div.cuG6ob').text
    #uid_3 > div.ifM9O > div:nth-child(2) > div > div > div > div.wo5SM > div > div.ByaOAe.wdAYCf > div:nth-child(2) > div.cuG6ob').text
    #uid_0 > div.ifM9O > div:nth-child(2) > div > div > div > div.wo5SM > div:nth-child(1) > div:nth-child(2) > div:nth-child(2) > div.cuG6ob').text

  end
def print_summit_depth()
#depthBaseSummit = find('div.ByaOAe DNjjCd NuspYb').text
return  all('.cuG6ob')[5].try(&:text)
#all('#uid_0 > div.ifM9O > div:nth-child(2) > div > div > div > div.wo5SM > div:nth-child(2) > div:nth-child(1) > div > table > tbody > tr:nth-child(1) > td:nth-child(1)').try(&:text) || "an error has occured"

end

def print_base_depth()
return  all('.cuG6ob')[3].try(&:text)
#return all('#uid_0 > div.ifM9O > div:nth-child(2) > div > div > div > div.wo5SM > div:nth-child(2) > div:nth-child(1) > div > table > tbody > tr:nth-child(1) > td:nth-child(1)').try(&:text) || "an error has occured"

end
def print_summit_temp
return  all('.cuG6ob')[6].try(&:text)
#return all('#uid_0 > div.ifM9O > div:nth-child(2) > div > div > div > div.wo5SM > div:nth-child(2) > div:nth-child(2) > div > table > tbody > tr:nth-child(1) > td:nth-child(3)').try(&:text) || "An error has occured"
end
def print_base_temp
return  all('.cuG6ob')[4].try(&:text)

end
end
