class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :meals
  has_many :workouts
  def total_cals
    t_cals = 0
    self.meals.each do |meal|
      t_cals += meal.food.calories
    end
    t_cals
  end

  def total_cals_burned
    t_burned = 0
    self.workouts.each do |workout|
      t_burned += workout.cals_burned
    end
    t_burned
  end

  def day_cals
    total_cals - total_cals_burned
  end
end
