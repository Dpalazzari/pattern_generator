require 'pry-state'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/pattern_generator'

class PatternGeneratorTest < Minitest::Test

  def test_it_exists
    generator = PatternGenerator.new
    assert generator
  end

  def test_it_initializes_with_a_hash
    generator = PatternGenerator.new
    assert_equal Hash, generator.pattern_hash.class
  end

  def test_initialized_hash_has_expected_values
    generator = PatternGenerator.new
    value = generator.pattern_hash[:'.']
    num_value = generator.pattern_hash[:'#']
    assert_equal Array, value.class
    assert_equal 'A', value[0]
    assert_equal Array, num_value.class
    assert_equal '0', num_value[0]
  end

  def test_it_verifies_one_character
    generator = PatternGenerator.new
    g = generator.verify('A', '.')
    assert_equal true, g
  end

  def test_it_refutes_one_character
    generator = PatternGenerator.new
    g = generator.verify('A', '#')
    assert_equal false, g
  end

  def test_it_verifies_a_hash_key_number
    generator = PatternGenerator.new
    g = generator.verify('1', '#')
    assert_equal true, g
  end

  def test_it_refutes_a_hash_key_letter
    generator = PatternGenerator.new
    g = generator.verify('1', '.')
    assert_equal false, g
  end

end