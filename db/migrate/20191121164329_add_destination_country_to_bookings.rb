class AddDestinationCountryToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :destination_country, :string
  end
end
