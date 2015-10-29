class Exercise < ActiveRecord::Base
  has_many :workouts
  def self.search(search)
    if search != ""
      where('name LIKE ?', "%#{search}%")
    else
      []
    end
  end
end
