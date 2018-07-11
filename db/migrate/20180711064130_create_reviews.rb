class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :description
      t.references :host, foreign_key: true
      t.references :dj, foreign_key: true

      t.timestamps
    end
  end
end
