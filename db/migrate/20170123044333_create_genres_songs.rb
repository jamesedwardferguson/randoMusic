class CreateGenresSongs < ActiveRecord::Migration
  def change
    create_table :genres_songs, :id => false do |t|
      t.integer :genre_id
      t.integer :song_id

      t.timestamps null: false
    end
  end
end
