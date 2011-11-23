module Codebreaker
  class Marker

    def initialize(code, guess)
      @code = code
      @guess = guess
    end

    def exact_match?(position)
      @code[position].chr == @guess[position].chr
    end
    
    def inexact_match?(position)
      @code.match(@guess[position].chr) && !exact_match?(position)
    end

    def exact_match_count
      (0..3).inject(0) do |count, index|
        count + (exact_match?(index) ? 1 : 0)
      end
    end

    def inexact_match_count
      (0..3).inject(0) do |count, index|
        count + (inexact_match?(index) ? 1 : 0)
      end
    end

  end
end
