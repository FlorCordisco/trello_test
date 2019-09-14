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

  def login
    @driver.a(class: 'text-white').click
    sleep 2
    @driver.input(name: 'user').send_keys "usertest575"
    sleep 2
    @driver.input(id: 'password').click
    @driver.input(id: 'password').send_keys "treboles"
    sleep 2
    @driver.input(id: 'login').click
    sleep 2
  end

  def board
    @driver.div(class: 'board-tile mod-add').click
    sleep 2
    @driver.input(class: 'subtle-input').send_keys "Tablero"
    sleep 2
    @driver.span(text: 'Create Board').click
    sleep 4
  end

  def create_card
    @driver.input(name: 'name').send_keys "New List"
    sleep 2
    @driver.input(class: 'primary mod-list-add-button js-save-edit').click
    sleep 2
    @driver.span(class: 'js-add-a-card').click
    sleep 1
    @driver.textarea(class: 'list-card-composer-textarea js-card-title').send_keys "New Card"
    sleep 2
    @driver.input(class: 'primary confirm mod-compact js-add-card').click
    sleep 2
  end

  def card
    @driver.div(class: 'list-card-details')
  end

  def delete
    @driver.a(class: 'board-menu-navigation-item-link js-open-more').click
    @driver.a(class: 'board-menu-navigation-item-link js-close-board').click
    @driver.input(class: 'js-confirm full negate').click
    @driver.a(class: 'quiet js-delete').click
    @driver.input(class: 'js-confirm full negate').click
    sleep 2
  end

end