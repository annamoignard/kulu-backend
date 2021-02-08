# frozen_string_literal: true

class AddNameToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :name, :string
  end
end
