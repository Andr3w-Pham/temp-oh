class AddToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :address, :string
    add_column :bookings, :date, :date
    add_column :bookings, :time, :string
  end
end
