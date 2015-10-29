class ExercisesController < ApplicationController

    def index
      @exercises = Exercise.search(params[:e_search])
      @workout = Workout.new
      respond_to do |format|
        format.js
      end
    end

    def create
      @workout = Workout.new
      @exercise = Exercise.new(exercise_params)
      if @exercise.save
        respond_to do |format|
          format.js
        end
      else
        redirect_to user_path(current_user), alert: 'Exercise no save'
      end

    end

    private
    def exercise_params
      params.require(:exercise).permit(:name, :cals_per_hour)
    end

end
