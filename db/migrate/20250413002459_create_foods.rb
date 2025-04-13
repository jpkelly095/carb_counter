class CreateFoods < ActiveRecord::Migration[8.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :serving_size
      t.integer :carbs
      t.references :ingredient, null: true, foreign_key: true

      t.timestamps
    end
  end
end
