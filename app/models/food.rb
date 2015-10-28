class Food < ActiveRecord::Base
  has_many :meals

  def self.search(search)
    if search != ""
      where('name LIKE ?', "%#{search}%")
    else
      []
    end
  end

end
