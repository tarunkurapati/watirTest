require 'rubygems'
require 'watir-webdriver'
require 'headless'
headless = Headless.new
headless.start
#b = Watir::Browser.start 'www.google.com'
#puts b.title
#b.close




# Please, when you update this file, update also http://wiki.openqa.org/display/WTR/Example+Test+Case

#-------------------------------------------------------------#
# Demo test for the Watir controller.
#
# Purpose: to demonstrate the following Watir functionality:
#   * entering text into a text field,
#   * clicking a button,
#   * checking to see if a page contains text.
# Test will search Google for the "pickaxe" Ruby book.
#-------------------------------------------------------------#

#-------------------------------------------------------------------------------------------------------------#
# demo test for the WATIR controller                                                              
#                                                                                                                  
# Purpose: to demonstrate the following WATIR functionality:                                               
#   * entering text into a text field                                                                   
#   * clicking a button
#   * selecting from a drop-down box
#   * clicking a radio button
#   * clicking a hyperlink
#   * checking to see if a page contains text.                                                   
#   * using a test::unit "assert" ( http://www.nunit.org/assertions.html )
#
#------------------------------------------------------------------------------------------------------------ #

# the Watir controller
#require "watir"

# set a variable
test_site = "http://www.google.com"

# open a browser
browser = Watir::Browser.new

# print some comments
puts "Beginning of test: Google search."

puts " Step 1: go to the test site: " + test_site
browser.goto test_site

puts " Step 2: enter 'pickaxe' in the search text field."
browser.text_field(:name, "q").set "pickaxe" # "q" is the name of the search field

puts " Step 3: click the 'Google Search' button."
browser.button(:name, "btnG").click # "btnG" is the name of the Search button

puts " Expected Result:"
puts "  A Google page with results should be shown. 'Programming Ruby' should be high on the list."

puts " Actual Result:"
if browser.text.include? "minecraft pickaxe keychain"  
  puts "  Test Passed. Found the test string: 'Programming Ruby'. Actual Results match Expected Results."
else
  puts "  Test Failed! Could not find: 'Programming Ruby'." 
end
puts browser.text
puts "End of test: Google search."

headless.destroy

