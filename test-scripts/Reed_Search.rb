#!/usr/bin/ruby

class FindWork 

# dsl (domain specific language) for the Reed job Site
# opens a browser for each search

#loads the required gems
require 'rubygems'
require "selenium-webdriver"

	# determins the number of times the script will run and outputs each loop number to a numerical variable 'i'.
  (0..5).each do |i|

# Creates a variable named 'browser', and assigns it to the command which selects and opens the browser to use.
browser = Selenium::WebDriver.for :chrome
	# directs the browser to the specified page
browser.get 'http://www.reed.co.uk/'

	# creates a variable linked to the kewords field so we can direct comands relative to this input fleid.
keyword = browser.find_element(:id => 'main-keywords')
	# creates a variable linked to the location field so we can direct commands relative to this input fleid.
location = browser.find_element(:id => 'main-location')

	# creates an array which list the jobs we wish to search.
jobs = ['html/css','ruby','sql','javascript','automation','tester' ]

	# Inputs desired data into keywords field from the jobs array which is 
	# linked to the loop variable 'i' so it can select each element sequentialy per loop.
keyword.send_keys jobs [i]

	# input desired data into the job location field
location.send_keys 'london'

	 # Locates the submit button, enters the above data and displays the results on a new page
browser.find_element(:id => 'homepageSearchButton').submit

	# Display search data and site used in the console for each loop of the script ( added +1 to start with a logical number)
  puts "loop number #{i+1}"
  puts browser.title


end	# end statement for the loop
end	# end staement for the class
