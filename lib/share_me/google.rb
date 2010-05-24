module ShareMe
	module Google
		def self.button( url )
			"<a title='Post on Google Buzz' class='google-buzz-button' href='http://www.google.com/buzz/post' data-button-style='normal-count' data-locale='en_GB' data-url='#{url}'></a><script type='text/javascript' src='http://www.google.com/buzz/api/button.js'></script>"
		end
		def self.small_button( url )
			"<a title='Post on Google Buzz' class='google-buzz-button' href='http://www.google.com/buzz/post' data-button-style='small-count' data-locale='en_GB' data-url='#{url}'></a><script type='text/javascript' src='http://www.google.com/buzz/api/button.js'></script>"
		end
	end
end
