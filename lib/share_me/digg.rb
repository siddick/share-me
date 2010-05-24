module ShareMe
	module Digg
		def self.button( url )
			"<a class='DiggThisButton DiggMedium' href='http://digg.com/submit?url=#{url}' ></a>
<script type='text/javascript'>
        (function() {
        var s = document.createElement('SCRIPT'), s1 = document.getElementsByTagName('SCRIPT')[0];
        s.type = 'text/javascript';
        s.src = 'http://widgets.digg.com/buttons.js';
        s1.parentNode.insertBefore(s, s1);
        })();
</script>"
		end
		def self.small_button( url )
			"<a class='DiggThisButton DiggCompact' href='http://digg.com/submit?url=#{url}' ></a>
<script type='text/javascript'>
        (function() {
        var s = document.createElement('SCRIPT'), s1 = document.getElementsByTagName('SCRIPT')[0];
        s.type = 'text/javascript';
        s.src = 'http://widgets.digg.com/buttons.js';
        s1.parentNode.insertBefore(s, s1);
        })();
</script>"
		end
	end
end
