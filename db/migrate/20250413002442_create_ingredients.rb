class CreateIngredients < ActiveRecord::Migration[8.0]
  def change
    create_table :ingredients do |t|
      t.integer :quantity
      t.references :meal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
