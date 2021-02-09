# frozen_string_literal: true

class RemoveAttributesFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :client_name
    remove_column :bookings, :date
    remove_column :bookings, :name
    remove_column :bookings, :time
  end
end
