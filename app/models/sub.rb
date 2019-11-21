class Sub < ApplicationRecord
  # Validate data contraints 
  validates :name, presence: true
  validates :name, uniqueness: true

  has_many :topics
end
