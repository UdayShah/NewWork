class CreatePostings < ActiveRecord::Migration[5.1]
  def change
    create_table :postings do |t|
      t.integer :employer_id
      t.integer :location_id
      t.string :job_name
      t.string :job_description
      t.integer :positions

      t.timestamps
    end
  end
end
