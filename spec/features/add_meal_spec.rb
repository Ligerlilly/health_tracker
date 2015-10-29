require 'rails_helper'
describe 'creating Meal' do
  before do
    @user = FactoryGirl.create(:user)
    login_as(@user, :scope => :user)
    @food = FactoryGirl.create(:food)
  end
  it 'can be created', js: true do
    visit root_path
    fill_in 'search', with: 'chicken'
    find('#search').native.send_keys(:return)

    click_button 'New Meal'
    sleep 1
    expect(page).to have_content '275'
  end
end
