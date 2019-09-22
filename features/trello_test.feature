Feature: The Trello test
	
Scenario: UI browsing
    Given I go to trello.com
    And I login with "usertest575" and "treboles"
    And I create a trello board named "Tablero"
    And I create a list "New List" 
    And I create a card "New Card" in the first list
    Then I verify that the card is successfully created
    Then I delete the board

Scenario: API test
    Given I set up key and token
    When I create a new board
    # And I get the board id
    # And I create a card in the first list of the board
    # Then I should see the card is successfully created

