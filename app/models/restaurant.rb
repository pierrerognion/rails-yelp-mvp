class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
  # When a restaurant is destroyed, all of its reviews should be destroyed as well
  has_many :reviews, dependent: :destroy
  validates :address, presence: true
end
