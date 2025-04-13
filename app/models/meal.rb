class Meal < ApplicationRecord
  has_rich_text :notes
  has_many :ingredients
  has_many :foods, through: :ingredients

  validates :name, presence: true

  def calculate_carbs
    foods.sum { |food| food.calculate_carbs(ingredients.find_by(food: food).quantity)}
  end
end
