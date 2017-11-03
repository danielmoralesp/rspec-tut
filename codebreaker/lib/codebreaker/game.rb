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
      marker = Marker.new(@secret, guess)
      @output_double.puts '+'*marker.exact_match_count + '-'*marker.number_match_count(guess)
    end
  end
end
