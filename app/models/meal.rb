class Meal < ApplicationRecord
  has_many :ingredients
  has_many :foods, through: :ingredients

  def calculate_carbs
    foods.sum { |food| food.calculate_carbs(ingredients.find_by(food: food).quantity)}
  end
end
