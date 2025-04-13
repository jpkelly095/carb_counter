class RemoveIngredientFromFood < ActiveRecord::Migration[8.0]
  def change
    remove_column :foods, :ingredient_id, :foreign_key
  end
end
