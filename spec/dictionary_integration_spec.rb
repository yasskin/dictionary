require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe "root route", {:type => :feature} do

  it("clicks on the add new word button and displays the form for that route") do
    visit('/')
    click_button("Add Word")
    expect(page).to have_content("Add New Word")
  end

end
