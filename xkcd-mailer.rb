require 'gmail'
require 'mail'

Gmail.connect!(ENV['GMAIL_USERNAME'], ENV['GMAIL_PASSWORD']) {|gmail|

	puts "Sending Mail..."
	recipient = "chippykennedy32@gmail.com"

	email = gmail.compose do
		to recipient
		subject "New XKCD What-If!"
		body "Here ya go"
	end
	email.deliver!

}
