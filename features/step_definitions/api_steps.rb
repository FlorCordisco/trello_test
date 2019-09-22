require 'rspec'
    
    Given("I set up key and token") do
        @api_key = 'feadda3b987438119efc60f2304d5cf9'
        @token = '4344776f7d8e721e5825d2125bf15ce1a94ed3c0f732a1a9a1a366ea8638d2d2'
        @api = ApiTest.new
    end

    When("I create a new board") do
       json = @api.create_board('Tablero-API',@api_key,@token)
       @board_id = json['id'] 
       puts @board_id
    end

    And("I get the board id") do
    end

    And("I create a card in the first list of the board") do
    end

    Then("I should see the card is successfully created") do
    end