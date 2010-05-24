
module ShareMe
	autoload :Twitter,  'share_me/twitter'
	autoload :Facebook, 'share_me/facebook'
	autoload :Google,   'share_me/google'
	autoload :Stumble,  'share_me/stumble'
	autoload :Digg,     'share_me/digg'
	autoload :Version,  'share_me/version'
	
	def self.button( url, service = :Facebook )
		const_get( service ).button( url )
	end

	def self.small_button( url, service = :Facebook )
		const_get( service ).small_button( url )
	end
end
