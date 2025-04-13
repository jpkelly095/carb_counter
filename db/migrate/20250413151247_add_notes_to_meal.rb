class AddNotesToMeal < ActiveRecord::Migration[8.0]
  def change
    add_column :meals, :notes, :text
  end
end
