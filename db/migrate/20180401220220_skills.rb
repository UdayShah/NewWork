class Skills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.integer :skill_id
      t.string :skill_name

      t.timestamps
    end
  end
end