Feature: The Trello test
	
	Scenario:
	Given I go to trello.com
	And I login with "usertest575" and "treboles"
    And I create a trello board named "Tablero"
    And I create a list "New List" 
    And I create a card "New Card" in the first list
    And I verify that the card is successfully created
    Then I delete the board