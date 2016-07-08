require('capybara/rspec')
require('launchy')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the add word route', {:type => :feature}) do
  it("clicks on the add new word link and display the word that has been added") do
    visit('/')
    click_link('Add a Word')
    fill_in('name', :with => 'Ruby')
    click_button('Add Word')
    expect(page).to have_content('Ruby')
  end

end
