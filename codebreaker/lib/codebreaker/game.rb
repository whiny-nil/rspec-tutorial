module Codebreaker
  class Game

    def initialize(output)
      @output = output
    end

    def start(code)
      @code = code
      @output.puts "Welcome to Codebreaker"
      @output.puts "Enter guess:"
    end

    def guess(guess)
      marker = Marker.new(@code, guess)
      @output.puts '+' * marker.exact_match_count + '-' * marker.inexact_match_count
    end

  end
end
