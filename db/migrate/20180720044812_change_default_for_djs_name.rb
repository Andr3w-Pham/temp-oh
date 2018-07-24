class ChangeDefaultForDjsName < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:djs, :name, nil)
  end
end
