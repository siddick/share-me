module ShareMe
	module Twitter
		def self.button( url )
			"<script type='text/javascript'>
			tweetmeme_url = '#{url}';
			tweetmeme_style = '';
			</script>
			<script type='text/javascript' src='http://tweetmeme.com/i/scripts/button.js'></script>"
		end
		def self.small_button( url )
			"<script type='text/javascript'>
			tweetmeme_url = '#{url}';
			tweetmeme_style = 'compact';
			</script>
			<script type='text/javascript' src='http://tweetmeme.com/i/scripts/button.js'></script>"
		end
	end
end
