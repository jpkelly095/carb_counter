class AddNotesToFood < ActiveRecord::Migration[8.0]
  def change
    add_column :foods, :notes, :text
  end
end
