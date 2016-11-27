require 'spec_helper'

describe 'Registration' do

  it 'should successfully run tests' do
    get '/register'
    last_response.body.include?('Magicole')
    expect(last_response.status).to eq(200) 
  end

end
