class CreateApartments < ActiveRecord::Migration[7.0]
  def change
    create_table :apartments do |t|
      t.integer :number
      t.references :building, null: false, foreign_key: true

      t.timestamps
    end
  end
end
