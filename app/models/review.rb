class Review < ApplicationRecord
  GRADES = [0, 1, 2, 3, 4, 5]
  belongs_to :restaurant
  validates :content, presence: true
  validates :restaurant_id, presence: true
  validates :rating, inclusion: { in: GRADES }
  validates :rating, numericality: { only_integer: true }
end



