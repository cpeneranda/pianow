class AddBrandToPianos < ActiveRecord::Migration[5.0]
  def change
    add_reference :pianos, :brand, index: true
  end
end
