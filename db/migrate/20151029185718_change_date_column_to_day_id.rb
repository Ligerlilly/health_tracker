class ChangeDateColumnToDayId < ActiveRecord::Migration
  def change
    remove_column :meals, :date
    remove_column :workouts, :date
    add_column :meals, :day_id, :integer
    add_column :workouts, :day_id, :integer
  end
end
