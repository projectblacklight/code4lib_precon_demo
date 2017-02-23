require 'rails_helper'

describe 'home page' do
  it 'works' do
    visit '/'
    expect(page).to have_content 'Welcome!'
  end
end
