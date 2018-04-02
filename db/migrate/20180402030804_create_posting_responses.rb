class CreatePostingResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :posting_responses do |t|
      t.integer :user_id
      t.integer :posting_id
      t.integer :response

      t.timestamps
    end
  end
end
