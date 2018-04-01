class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :password_digest
      t.string :email, unique: true, index: true
      t.integer :location_id
      t.string :profile_pic
      t.string :resume
      t.boolean :user_type

      t.timestamps
    end
  end
end
