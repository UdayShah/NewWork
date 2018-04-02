class CreateRequiredSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :required_skills do |t|
      t.integer :posting_id
      t.integer :skill_id
      t.integer :skill_level

      t.timestamps
    end
  end
end
