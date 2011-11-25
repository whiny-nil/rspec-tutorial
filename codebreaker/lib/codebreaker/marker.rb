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
      total_match_count - exact_match_count
    end

    def total_match_count
      count = 0
      code = @code.split ''
      guess = @guess.split ''
      guess.map do |n|
        if code.include? n
          code.delete_at(code.index(n))
          count += 1
        end
      end
      count
    end

  end
end
