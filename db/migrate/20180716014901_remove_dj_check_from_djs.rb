class RemoveDjCheckFromDjs < ActiveRecord::Migration[5.2]
  def change
    remove_column :djs, :dj_check, :boolean
  end
end
