#!/usr/bin/ruby
# BDD (Behavior Driven Development example of a DSL (Domain Specific Language)for Reed job Site
require 'rubygems'
require "selenium-webdriver"

def reed
#selects and open the browser to use
@browser = Selenium::WebDriver.for :chrome
# directs the browser to the specified page
@browser.navigate.to 'http://www.reed.co.uk/'
end

def input_elements
# creates a variable to find the kewords field so we can direct comands relative to this input fleid.
@keyword = @browser.find_element(:id => 'main-keywords')
	# creates a variable to find the location field so we can direct comands relative to this input fleid.
@location = @browser.find_element(:id => 'main-location')
end

def input_data
# inputs desired data into keywords field
@keyword.send_keys 'html/css'
# input desired data into the job location field
@location.send_keys 'london'
end

def go
# submits the above data and displays the results on a new page
@keyword.submit
#display search data and site used in the console
puts @browser.title
end

def wait_quit
# wait 10 seconds to see the results.....
sleep 10  
#close the browser  
@browser.quit
end

# below commads execute relevant scripts
reed
input_elements
input_data
go
wait_quit
