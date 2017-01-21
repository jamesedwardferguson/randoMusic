class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.text :name
      t.integer :playlist_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
