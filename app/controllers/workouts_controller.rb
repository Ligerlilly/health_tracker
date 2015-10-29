class WorkoutsController < ApplicationController
  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)
    @workout.day = today
    if @workout.save
      respond_to do |format|
        format.js
      end
    else
      redirect_to user_path(current_user)
    end
  end

  def destroy
    @workout_id = params[:id]
    @workout = Workout.find(@workout_id)
    @workout_cals = @workout.cals_burned
    @workout.destroy
    respond_to do |format|
      format.js
    end
  end

  private
  def workout_params
    params.require(:workout).permit(:user_id, :exercise_id, :duration)
  end
end
