class CreatePianos < ActiveRecord::Migration[5.0]
  def change
    create_table :pianos do |t|
      t.string :title
      t.text :description
      t.string :category
      t.string :address
      t.integer :price

      t.timestamps
    end
  end
end
