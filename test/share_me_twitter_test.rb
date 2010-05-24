require 'test_helper'

class ShareMeTwitterTest < Test::Unit::TestCase

	def test_twitter
		url  = "http://www.siddick.com/"
		cont = ShareMe::Twitter.button( url )
		assert cont.is_a? String 
	end
end
