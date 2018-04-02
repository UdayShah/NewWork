class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :province
      t.string :city
      t.string :street
      t.string :building_number
      t.string :apartment_number
      t.string :postal_code

      t.timestamps
    end
  end
end
