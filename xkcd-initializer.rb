require 'open-uri'
require 'pry'
require 'nokogiri'
require "sqlite3"

#Initialize DB
puts "Creating database..."
db = SQLite3::Database.new "xkcd.db"
rows = db.execute <<-SQL
	destroy table whatifs (
	);
	create table whatifs (
		title varchar(50),
		date TEXT
	);
SQL

#Scrape XKCD
puts "Current Status Web Scrape..."
url = "https://what-if.xkcd.com/"
html = open(url)
doc = Nokogiri::HTML(html)
current_title = doc.title

#Update DB
puts "Updating database..."
db.execute "INSERT INTO whatifs VALUES(#{current_title},#{DateTime.new(Time.now)})"



