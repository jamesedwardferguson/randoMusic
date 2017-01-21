class CreateDecades < ActiveRecord::Migration
  def change
    create_table :decades do |t|
      t.integer :year

      t.timestamps null: false
    end
  end
end
