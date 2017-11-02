module Codebreaker
  class Game
    def initialize(output_double)
      @output_double = output_double
    end
    def start(secret)
      @secret = secret
      @output_double.puts 'Welcome to Codebreaker!'
      @output_double.puts 'Enter guess:'
    end
    def guess(guess)
      mark = ''
      (0..3).each do |index|
        if exact_match?(guess, index)
          mark << '+'
        end
      end
      (0..3).each do |index|
        if number_match?(guess, index)
          mark << '-'
        end
      end
      @output_double.puts mark
    end

    def exact_match?(guess, index)
      guess[index] == @secret[index]
    end

    def number_match?(guess, index)
      @secret.include?(guess[index]) && !exact_match?(guess, index)
    end
  end
end
