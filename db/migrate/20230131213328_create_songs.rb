class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :length
      t.integer :play_count

      t.timestamps
      # created_at and updated_at
    end
    # instructions for how to change the database
    # columns and rows of table
  end
end
