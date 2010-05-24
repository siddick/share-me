module ShareMe
	module Facebook
		def self.button( url )
			"<a name='fb_share' type='box_count' share_url='#{url}' href='http://www.facebook.com/sharer.php'>Share</a><script src='http://static.ak.fbcdn.net/connect.php/js/FB.Share' type='text/javascript'></script>"
		end
		def self.small_button( url )
			"<a name='fb_share' type='button_count' share_url='#{url}' href='http://www.facebook.com/sharer.php'>Share</a><script src='http://static.ak.fbcdn.net/connect.php/js/FB.Share' type='text/javascript'></script>"
		end
	end
end
