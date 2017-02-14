require 'open-uri'
require 'pry'
require 'nokogiri'

puts "initalizing scraper env..."
url = "https://what-if.xkcd.com/"
html = open(url)
doc = Nokogiri::HTML(html)
current_title = doc.title
puts "current title set to: " + current_title

ENV['CURRENT_TITLE'] = current_title
