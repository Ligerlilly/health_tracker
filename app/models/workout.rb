class Workout < ActiveRecord::Base
  belongs_to :user
  belongs_to :exercise
  belongs_to :day

  def cals_burned
    exercise.cals_per_hour * duration
  end
end
