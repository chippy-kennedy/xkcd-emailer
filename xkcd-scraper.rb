require 'open-uri'
require 'nokogiri'
require 'pry'

puts "starting scraper..."
url = "https://what-if.xkcd.com/"
html = open(url)

doc = Nokogiri::HTML(html)
puts doc.title == ENV['CURRENT_TITLE']

