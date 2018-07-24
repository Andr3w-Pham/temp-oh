class RemoveDescriptionFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :description, :string
  end
end
