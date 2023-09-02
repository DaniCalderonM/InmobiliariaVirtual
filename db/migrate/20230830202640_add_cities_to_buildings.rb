class AddCitiesToBuildings < ActiveRecord::Migration[7.0]
  def change
    add_reference :buildings, :city, null: false, foreign_key: true
  end
end
