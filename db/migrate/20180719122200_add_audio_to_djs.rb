class AddAudioToDjs < ActiveRecord::Migration[5.2]
  def change
    add_column :djs, :audio, :string
  end
end
