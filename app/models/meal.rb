class Meal < ActiveRecord::Base
  belongs_to :user
  belongs_to :food
  belongs_to :day
end
