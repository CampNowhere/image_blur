require './image_blur'
require 'minitest/autorun'

PASS_CONDITION = "0000\n0100\n0001\n0000\n"

class TestTestClass < MiniTest::Unit::TestCase
	def setup
		@image = Image.new([
			[0, 0, 0, 0],
			[0, 1, 0, 0],
			[0, 0, 0, 1],
			[0, 0, 0, 0]
		])
	end

	def test_output_produces_output
		assert_output(PASS_CONDITION) { @image.output_image }
	end
end

