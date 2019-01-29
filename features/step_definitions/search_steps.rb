require 'watir'
require 'cucumber'
require 'rspec'




Given(/^a user goes to Amazon$/) do
  @browser = Watir::Browser.new :chrome
  @browser.goto"http://www.amazon.com"
end

When(/^they search for "([^"]*)"$/) do |arg|
  @browser.text_field(:id => "twotabsearchtextbox").set"#{arg}"
  @browser.send_keys :return
end

Then(/^amazon should return results for "([^"]*)"$/) do |arg|

  @browser.close
end