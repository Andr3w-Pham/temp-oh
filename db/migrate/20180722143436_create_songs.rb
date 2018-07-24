class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :genre
      t.text :description
      t.string :image
      t.string :audio
      t.references :dj, foreign_key: true

      t.timestamps
    end
  end
end
