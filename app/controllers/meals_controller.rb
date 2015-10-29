class MealsController < ApplicationController
  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.day = today
    if @meal.save
      respond_to do |format|
        format.js
      end
    else
      redirect_to user_path(current_user), alert: 'failed to save meal'
    end
  end

  def destroy
    @meal_id = params[:id]
    @meal = Meal.find(@meal_id)
    @meal_cals = @meal.food.calories
    @meal.destroy
    respond_to do |format|
      format.js
    end
  end

  private
  def meal_params
    params.require(:meal).permit(:food_id, :user_id)
  end

end
