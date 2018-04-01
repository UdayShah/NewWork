class Locations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :province
      t.string :city
      t.string :address1
      t.string :address2
      t.string :apt_num
      t.string :postal_code

      t.timestamps
    end
  end
end
