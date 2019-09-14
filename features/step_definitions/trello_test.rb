require 'watir'
require 'rspec'

Given("I go to trello.com") do
	@browser = Trello.new(Watir::Browser.new)
	@browser.open_page
	sleep 2
end

And("I login with valid credentials") do
	@browser.login
end

And("I open a trello Board") do
	@browser.board
end

And("I create a card in first list of that board") do
	@browser.create_card
end

Then("I verify that the card is successfully created") do
	(@browser.card.text == "New Orl").should be true
end