class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.text :name
      t.integer :artist_id
      t.integer :album_id
      t.string  :url
      t.string  :artwork
      t.integer :user_id
      t.integer :soundcloud_id
      t.timestamps null: false
    end
  end
end
