# frozen_string_literal: true

class AddToSessions < ActiveRecord::Migration[6.0]
  def change
    add_column :sessions, :time, :string
  end
end
