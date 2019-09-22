require 'watir'

class BrowserContainer
  def initialize(browser)
    @driver = browser
  end
end
  
class Trello < BrowserContainer
    
  def open_page
    @driver.goto('https://trello.com/')
  end

  def login(user,password)
    @driver.a(class: 'text-white').click
    sleep 2
    @driver.input(name: 'user').send_keys user
    sleep 2
    @driver.input(id: 'password').click
    @driver.input(id: 'password').send_keys password
    sleep 2
    @driver.input(id: 'login').click
    sleep 2
  end

  def board(board)
    @driver.div(class: 'board-tile').click
    sleep 2
    @driver.input(class: 'subtle-input').send_keys board
    sleep 2
    @driver.span(text: 'Create Board').click
    sleep 4
  end

  def first_list(list)
    @driver.input(name: 'name').send_keys list
    sleep 2
    @driver.input(class: 'primary').click
    sleep 2
  end

  def create_card(card)
    @driver.span(class: 'js-add-a-card').click
    sleep 1
    @driver.textarea(class: 'list-card-composer-textarea').send_keys card
    sleep 2
    @driver.input(class: 'mod-compact').click
    sleep 2
  end

  def card
    @driver.div(class: 'list-card-details')
  end

  def delete
    @driver.a(class: 'js-open-more').click
    @driver.a(class: 'js-close-board').click
    @driver.input(class: 'full').click
    @driver.a(class: 'js-delete').click
    @driver.input(class: 'js-confirm').click
    sleep 2
  end

end