module Codebreaker
  class Game
    def initialize(output_double)
      @output_double = output_double
    end
    def start
      @output_double.puts 'Welcome to Codebreaker!'
      @output_double.puts 'Enter guess:'
    end
  end
end
