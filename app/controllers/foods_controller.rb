class FoodsController < ApplicationController

  def index
    @food = Food.new
    @foods = Food.search(params[:search])
    @meal = Meal.new
    respond_to do |format|
      format.js
    end
  end

  def new
    @food = Food.new
  end

  def create
    @meal = Meal.new
    @food = Food.new(food_params)
    if @food.save
      respond_to do |format|
        format.js
      end
    else
      redirect_to user_path(current_user), alert: 'Food no save'
    end

  end

  private
  def food_params
    params.require(:food).permit(:name, :calories)
  end

end
