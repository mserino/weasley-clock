require 'spec_helper'

feature 'Registering' do
  scenario 'I can register' do
    visit '/register'

    expect(page.status_code).to eq 200
    expect(page).to have_content('I solemnly swear I am up to no good')
  end

  scenario 'I can enter my details' do
    visit '/register'
    fill_in :name, :with => 'Magicole'
    fill_in :email, :with => 'magicole@alohomora.com'
    fill_in :password, :with => 'testtest'
    fill_in :password_confirmation, :with => 'testtest'
    click_button 'Portus'
    expect(current_path).to eq('/')
  end
end
