class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :plane, foreign_key: true
      t.references :user, foreign_key: true
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
