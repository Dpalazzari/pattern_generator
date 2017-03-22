require 'pry-state'
class PatternGenerator

  attr_reader :pattern_hash

  def initialize
    letter_array = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
    number_array = %w(0 1 2 3 4 5 6 7 8 9)
    @pattern_hash = {
      '.': letter_array,
      '#': number_array
    }
  end

  def verify(input, pattern)
    binding.pry
    # return true if input matches pattern
    # return false if input !matches pattern
  end

end