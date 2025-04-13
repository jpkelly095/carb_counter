class Food < ApplicationRecord
  def calculate_carbs(quantity)
    (quantity.fdiv(self.serving_size) * self.carbs).round
  end
end
