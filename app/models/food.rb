class Food < ApplicationRecord
  def calculate_carbs(quantity)
    quantity / self.serving_size * self.carbs
  end
end
