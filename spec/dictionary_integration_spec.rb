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

  it('shows the user the words he or she added') do
    visit('/')
    expect(page).to have_content('Ruby')
  end
end

describe('the add definition route', {:type => :feature}) do
  it('clicks on the add a definition link and displays the definition that has been added') do
    visit('/')
    click_link('Ruby')
    expect(page).to have_content('Ruby')
    click_link('Add a Definition')
    expect(page).to have_content('Provide a Definition')
    fill_in('definition', :with => 'A dynamic, open source programming language with a focus on simplicity and productivity.')
    click_button('Add Definition')
    expect(page).to have_content('A dynamic, open source programming language with a focus on simplicity and productivity.')
  end

end
