require('capybara/rspec')
require('launchy')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('The word count path',{:type => :feature}) do
  it ("processes the user entry and returns the count of a word in a sentence") do
    visit ('/')
    fill_in('input_string' , :with => "If Peter Piper picked a peck of pickled peppers, where's the peck of pickled peppers Peter Piper picked?")
    fill_in('input_word', :with => 'peck')
    click_button('Count') # to submit the form
    expect(page).to have_content("The word peck exists 2 times in the sentence If Peter Piper picked a peck of pickled peppers, where's the peck of pickled peppers Peter Piper picked?") # check results
  end
end
