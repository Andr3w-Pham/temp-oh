class CreateHosts < ActiveRecord::Migration[5.2]
  def change
    create_table :hosts do |t|
      t.string :name
      t.string :location
      t.string :image
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
