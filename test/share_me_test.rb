require 'test_helper'

class ShareMeTest < Test::Unit::TestCase

	Url = "http://www.siddick.com/"
	def test_twitter
		content = ShareMe.button( Url, :Twitter )
		assert content.is_a? String 
		content = ShareMe.small_button( Url, :Twitter )
		assert content.is_a? String 
	end

	def test_facebook
		content = ShareMe.button( Url, :Facebook )
		assert content.is_a? String 
		content = ShareMe.small_button( Url, :Facebook )
		assert content.is_a? String 
	end

	def test_google
		content = ShareMe.button( Url, :Google )
		assert content.is_a? String 
		content = ShareMe.small_button( Url, :Google )
		assert content.is_a? String 
	end

	def test_stumble
		content = ShareMe.button( Url, :Stumble )
		assert content.is_a? String 
		content = ShareMe.small_button( Url, :Stumble )
		assert content.is_a? String 
	end

	def test_digg
		content = ShareMe.button( Url, :Digg )
		assert content.is_a? String 
		content = ShareMe.small_button( Url, :Digg )
		assert content.is_a? String 
	end
end
