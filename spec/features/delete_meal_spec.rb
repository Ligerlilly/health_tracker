require 'rails_helper'
describe Meal do
  before do
    @user = FactoryGirl.create(:user)
    login_as(@user, :scope => :user)
    @chicken = FactoryGirl.create(:food)
    @meal = FactoryGirl.create(:meal, food_id: @chicken.id, user_id: @user.id)
  end
  it 'can be created', js: true do
    visit user_path(@user)


    #save_and_open_page

    expect(page).to have_content '275'
    click_link 'Delete'
    expect(page).to_not have_content '275'
  end
end
