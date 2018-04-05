require "minitest/autorun"
require_relative "isbn_ten.rb"  #You have to change this what is in quotes to the name of your rb files

class Testisbn_ten < Minitest::Test  #The word Addition can be replace with the name of your project

	def test_assert_that_1234567890_is_not_valid_ISBN
	assert_equal("false", isbn_ten("1234567890"))
	end
end

def test_assert_that__is_a_valid_ISBN
	assert_equal("true", isbn_ten(""))
	end
end