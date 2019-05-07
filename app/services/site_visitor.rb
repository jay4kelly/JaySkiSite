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
begin
#RestClient::Request.execute(:method => visit :get, :url => "http://www.google.com/search?q=#{@mountain_name}", :timeout => 10, :open_timeout => 10)
visit "http://www.google.com/search?q=#{@mountain_name}"
wait = Selenium::WebDriver::Wait.new(:timeout => 5)
#find(".RNNXgb").click
#fill_in('q', :with => @mountain).native.send_keys(:return)
sleep(2)
rescue Net::HTTPBadResponse
    false
end
end


def print_trails_open()
  wait = Selenium::WebDriver::Wait.new(:timeout => 5)
  trails = wait.until{all('.cuG6ob')[1].try(&:text) || "An error has occured"}
  return trails
end

def print_lifts_open()
  wait = Selenium::WebDriver::Wait.new(:timeout => 5)
  lifts = wait.until{all('.cuG6ob')[2].try(&:text) || "An error has occured"}
  return lifts
  #return all('.cuG6ob')[2].try(&:text) || "An error has occured"
  #find('#uid_0 > div.ifM9O > div:nth-child(2) > div > div > div > div.wo5SM > div:nth-child(1) > div:nth-child(2) > div:nth-child(2) > div.cuG6ob').text
    #uid_3 > div.ifM9O > div:nth-child(2) > div > div > div > div.wo5SM > div > div.ByaOAe.wdAYCf > div:nth-child(2) > div.cuG6ob').text
    #uid_0 > div.ifM9O > div:nth-child(2) > div > div > div > div.wo5SM > div:nth-child(1) > div:nth-child(2) > div:nth-child(2) > div.cuG6ob').text
  end
  def print_base_depth()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    basedepth = wait.until{all('.cuG6ob')[3].try(&:text) || "An error has occured"}
    return basedepth
  #return  all('.cuG6ob')[3].try(&:text) || "An error has occured"

  #return all('#uid_0 > div.ifM9O > div:nth-child(2) > div > div > div > div.wo5SM > div:nth-child(2) > div:nth-child(1) > div > table > tbody > tr:nth-child(1) > td:nth-child(1)').try(&:text) || "an error has occured"
  end
  def print_base_temp()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    basetemp = wait.until{all('.cuG6ob')[4].try(&:text) || "An error has occured"}
    return basetemp
  #return  all('.cuG6ob')[4].try(&:text)|| "An error has occured"

  end
def print_summit_depth()
  wait = Selenium::WebDriver::Wait.new(:timeout => 5)
#depthBaseSummit = find('div.ByaOAe DNjjCd NuspYb').text
summitdepth= wait.until{all('.cuG6ob')[5].try(&:text) || "An error has occured"}
return summitdepth
#return  all('.cuG6ob')[5].try(&:text) || "An error has occured"

#all('#uid_0 > div.ifM9O > div:nth-child(2) > div > div > div > div.wo5SM > div:nth-child(2) > div:nth-child(1) > div > table > tbody > tr:nth-child(1) > td:nth-child(1)').try(&:text) || "an error has occured"

end


def print_summit_temp()
  wait = Selenium::WebDriver::Wait.new(:timeout => 5)
  summittemp = wait.until{all('.cuG6ob')[6].try(&:text) || "An error has occured"}
  return summittemp
#return  all('.cuG6ob')[6].try(&:text) || "An error has occured"

#return all('#uid_0 > div.ifM9O > div:nth-child(2) > div > div > div > div.wo5SM > div:nth-child(2) > div:nth-child(2) > div > table > tbody > tr:nth-child(1) > td:nth-child(3)').try(&:text) || "An error has occured"
end

end
