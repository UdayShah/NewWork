class CreateSkillsets < ActiveRecord::Migration[5.1]
  def change
    create_table :skillsets do |t|
      t.integer :user_id
      t.integer :skill_id
      t.integer :skill_level

      t.timestamps
    end
  end
end
