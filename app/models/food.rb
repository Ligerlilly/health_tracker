class Food < ActiveRecord::Base
  has_many :meals

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      scoped
    end
  end

end
