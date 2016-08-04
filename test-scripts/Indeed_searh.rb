#!/usr/bin/ruby
class Indeed


# dsl (domain specific language) for the Indeed job Site
# opens a browser for each search

#loads the required gems
    require 'rubygems'
    require "selenium-webdriver"

    # determins the number of times the script will run and outputs each loop number to a numerical variable.
    (0..5).each do |i|

      #selects and opens the browser to use
      browser = Selenium::WebDriver.for :chrome
      # directs the browser to the specified page
      browser.get 'http://www.indeed.co.uk/'

      # creates a variable linked to the keywords field so we can direct comands relative to this input fleid.
      keyword = browser.find_element(:id => 'what')
      # creates a variable linked to the location field so we can direct commands relative to this input fleid.
      location = browser.find_element(:id => 'where')

      # creates an array which list the jobs we wish to search.
      jobs = ['html/css','ruby','sql','javascript','automation','tester' ]

      # inputs desired data into keywords field
      keyword.send_keys jobs [i]

      # input desired data into the job location field but this site knows your location and fill it in
      #location.send_keys 'london'

      # submits the above data and displays the results on a new page
      browser.find_element(:id => 'fj').submit

      # Display search data and site used in the console for each loop of the script
      puts "loop number #{i}"
      puts browser.title


    end	# end statement for the loop
  end	# end staement for the class
