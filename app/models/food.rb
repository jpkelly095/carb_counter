class Food < ApplicationRecord
  validates :name, :serving_size, :carbs, presence: true

  def calculate_carbs(quantity)
    (quantity.fdiv(self.serving_size) * self.carbs).round
  end
end
