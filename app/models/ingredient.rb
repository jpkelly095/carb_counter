class Ingredient < ApplicationRecord
  belongs_to :meal
  belongs_to :food

  validates :quantity, presence: true
end
