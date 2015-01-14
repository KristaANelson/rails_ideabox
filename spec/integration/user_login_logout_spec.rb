require 'rails_helper'

describe 'the user' do
  include Capybara::DSL
  it 'is able to see a form to log in on the root page' do
    user = User.new(username: 'example', password: 'password')
    visit root_path
    expect(page).to have_field("username")
    expect(page).to have_field("password")
  end
end
