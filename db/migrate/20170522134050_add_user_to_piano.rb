class AddUserToPiano < ActiveRecord::Migration[5.0]
  def change
    add_reference :pianos, :user, foreign_key: true
  end
end
