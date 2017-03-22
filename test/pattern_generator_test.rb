require 'minitest/autorun'
require 'minitest/pride'
require './lib/pattern_generator'

class PatternGeneratorTest < Minitest::Test

  def test_it_exists
    generator = PatternGenerator.new
    assert generator
  end

end