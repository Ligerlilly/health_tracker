class FoodsController < ApplicationController

  def index
    @foods = Food.search(params[:search])
    @meal = Meal.new
    respond_to do |format|
      format.js
    end
  end



end
