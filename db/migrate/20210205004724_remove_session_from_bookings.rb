# frozen_string_literal: true

class RemoveSessionFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :session
  end
end
