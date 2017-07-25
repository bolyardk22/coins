require "minitest/autorun"
require_relative "coins.rb"
class TestChange_Machine < Minitest::Test

	def test_1_equals_1
		assert_equal(1,1)
	end

	def test_1_penny
		assert_equal({:quarters=>0, :dimes=>0, :nickels=>0, :pennies=>1}, change_hashes(1))
	end

	def test_4_penny
		assert_equal({:quarters=>0, :dimes=>0, :nickels=>0, :pennies=>4}, change_hashes(4))
	end

	def test_1_nickle
		assert_equal({:quarters=>0, :dimes=>0, :nickels=>1, :pennies=>0}, change_hashes(5))
	end

	def test_1_dime
		assert_equal({:quarters=>0, :dimes=>1, :nickels=>0, :pennies=>0}, change_hashes(10))
	end

	def test_1_quarter
		assert_equal({:quarters=>1, :dimes=>0, :nickels=>0, :pennies=>0}, change_hashes(25))
	end

	def test_30_cents
		assert_equal({:quarters=>1, :dimes=>0, :nickels=>1, :pennies=>0}, change_hashes(30))
	end
end