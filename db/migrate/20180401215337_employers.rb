class Employers < ActiveRecord::Migration[5.1]
  def change
    create_table :employers do |t|
      t.integer :location_id
      t.integer :user_id
      t.boolean :approved

      t.timestamps
    end
  end
end
