class UsersController < ApplicationController

  def show
    #@food = Food.new
    @user = User.find(params[:id])
    @meals = @user.meals.paginate(:page => params[:page], :per_page => 5)
    @workouts = @user.workouts.paginate(:page => params[:page], :per_page => 5)
  end

  def current_user_home
    redirect_to current_user
  end
end
