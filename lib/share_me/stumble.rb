module ShareMe
	module Stumble
		def self.button( url )
			"<script src='http://www.stumbleupon.com/hostedbadge.php?s=5&r=#{url}'></script>"
		end

		def self.small_button( url )
			"<script src='http://www.stumbleupon.com/hostedbadge.php?s=1&r=#{url}'></script>"
		end
	end
end
