class AddForeignKeys < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :users, :locations, column: :location_id, primary_key: :id

    add_foreign_key :employers, :users, column: :user_id, primary_key: :id

    add_foreign_key :skillsets, :users, column: :user_id, primary_key: :id
    add_foreign_key :skillsets, :skills, column: :skill_id, primary_key: :id

    add_foreign_key :postings, :employers, column: :employer_id, primary_key: :id
    add_foreign_key :postings, :location, column: :location_id, primary_key: :id

    add_foreign_key :required_skills, :postings, column: :posting_id, primary_key: :id
    add_foreign_key :required_skills, :skills, column: :skill_id, primary_key: :id

    add_foreign_key :posting_response, :users, column: :user_id, primary_key: :id
    add_foreign_key :required_skills, :postings, column: :posting_id, primary_key: :id
  end
end
