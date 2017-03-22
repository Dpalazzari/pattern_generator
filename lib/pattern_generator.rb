require 'pry-state'
class PatternGenerator

  LETTERS = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
  NUMBERS = %w(0 1 2 3 4 5 6 7 8 9)

  attr_reader :pattern_hash

  def initialize
    @pattern_hash = {
      '.': LETTERS,
      '#': NUMBERS
    }
  end

  def verify(input, pattern)
    # binding.pry
    if pattern_hash[pattern.to_sym].include?(input)
      return true
    else
      return false
    end
    # return true if input matches pattern
    # return false if input !matches pattern
  end

end