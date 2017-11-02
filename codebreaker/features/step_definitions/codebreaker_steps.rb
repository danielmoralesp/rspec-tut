class OutputDouble
  def messages
    @messages ||= []
  end
  def puts(message)
    messages << message
  end
end

def output_double
  @output ||= OutputDouble.new
end

Given /^I am not yet playing$/ do
end

Given /^the secret code is "([^"]*)"$/ do |secret|
  @game = Codebreaker::Game.new(output_double)
  @game.start(secret)
end

When /^I start a new game$/ do
  game = Codebreaker::Game.new(output_double)
  game.start('1234')
end

When /^I guess "([^"]*)"$/ do |guess|
  @game.guess(guess)
end

Then /^I should see "([^"]*)"$/ do |message|
  output_double.messages.should include(message)
end

Then /^the mark should be "([^"]*)"$/ do |mark|
  output_double.messages.should include(mark)
end
