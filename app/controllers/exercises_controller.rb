class ExercisesController < ApplicationController
    
    def index
      @exercises = Exercise.search(params[:e_search])
      @workout = Workout.new
      respond_to do |format|
        format.js
      end
    end
end
