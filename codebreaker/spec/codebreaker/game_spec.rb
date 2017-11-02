require 'spec_helper'

module Codebreaker
  describe Game do
    describe "#start" do

      let(:output_double) { double('output_double').as_null_object }
      let(:game) { Game.new(output_double) }

      # before(:each) do
      #   output_double = double('output_double').as_null_object
      #   game = Game.new(output_double)
      # end

      it "sends a welcome message" do
        output_double.should_receive(:puts).with('Welcome to Codebreaker!')
        game.start('1234')
      end

      it "prompts for the first guess" do
        output_double.should_receive(:puts).with('Enter guess:')
        game.start('1234')
      end
    end
  end
end
