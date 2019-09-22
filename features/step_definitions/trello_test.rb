require 'watir'
require 'rspec'

Given("I go to trello.com") do
	@browser = Trello.new(Watir::Browser.new)
	@browser.open_page
	sleep 2
end
#/^I set "([^"]*)" as user and "([^"]*)" as password$/
And(/^I login with "([^"]*)" and "([^"]*)"$/) do |user,password|
	@browser.login(user,password)
end

And(/^I create a trello board named "([^"]*)"$/) do |board|
	@browser.board(board)
end

And(/^I create a list "([^"]*)"$/) do |list|
	@browser.first_list(list)
end

And(/^I create a card "([^"]*)" in the first list$/) do |card|
	@browser.create_card(card)
end

And("I verify that the card is successfully created") do
	(@browser.card.text == "New Card").should be true
end

Then("I delete the board") do
	@browser.delete
end
