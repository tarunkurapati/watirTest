require 'rubygems'
require 'watir-webdriver'
b = Watir::Browser.start 'www.google.com'
puts b.title
b.close
