class AddDefaultNameToDjs < ActiveRecord::Migration[5.2]
  def up
    change_column :djs, :name, :string, :default => "andrew"
  end

  def down
    change_column :djs, :name, :string, :default => "test"
  end
end
