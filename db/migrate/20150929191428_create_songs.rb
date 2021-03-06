class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :stream_url
      t.string :title
      t.string :artist
      t.references :user, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
