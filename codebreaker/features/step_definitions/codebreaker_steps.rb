Given /^I am not yet playing$/ do
end

When /^I start a new game$/ do
  Codebreaker::Game.new(STDOUT).start('1234')
end
