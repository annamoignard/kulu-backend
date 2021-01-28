class RenameBookingClass < ActiveRecord::Migration[6.0]
  def change
    rename_column :bookings, :class, :session
  end
end
