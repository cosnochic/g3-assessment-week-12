class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :movie_id
      t.string :title
      t.text :body
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
