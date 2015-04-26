class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.date :year
      t.text :synopsis
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
