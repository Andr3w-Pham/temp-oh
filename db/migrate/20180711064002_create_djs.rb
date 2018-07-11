class CreateDjs < ActiveRecord::Migration[5.2]
  def change
    create_table :djs do |t|
      t.string :name
      t.text :description
      t.string :location
      t.string :portfolio
      t.decimal :rate
      t.string :image
      t.boolean :dj_check
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
