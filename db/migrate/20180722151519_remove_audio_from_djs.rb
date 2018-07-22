class RemoveAudioFromDjs < ActiveRecord::Migration[5.2]
  def change
    remove_column :djs, :audio, :string
  end
end
