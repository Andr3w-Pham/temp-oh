class RemovePortfolioFromDjs < ActiveRecord::Migration[5.2]
  def change
    remove_column :djs, :portfolio, :string
  end
end
