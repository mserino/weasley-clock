require 'spec_helper'

feature 'Registering' do

  scenario 'I can register' do

    visit '/register'

    expect(page.status_code).to eq 200
    expect(page).to have_content("I solemnly swear I am up to no good")
  end

end
