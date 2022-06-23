class AddGuestsToBooking < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :guests, :integer
  end
end
