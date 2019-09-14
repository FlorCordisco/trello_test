Feature: The Trello test
	
	Scenario:
	Given I go to trello.com
	And I login with valid credentials
    And I open a trello Board
    And I create a card in first list of that board
    Then I verify that the card is successfully created