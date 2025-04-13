class Meal < ApplicationRecord
  has_many :ingredients

  def calculate_carbs
    count = 0
    self.ingredients.each do |i|
      count += i.food.calculate_carbs(i.quantity)
    end
    count
  end
end
