# frozen_string_literal: true

class ModifyBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :class_id, :integer
    remove_column :bookings, :user_id, :integer
    remove_column :bookings, :date, :date
    add_column :bookings, :class, :string
    add_column :bookings, :client_name, :string
    add_column :bookings, :date, :string
  end
end
