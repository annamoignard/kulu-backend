# frozen_string_literal: true

class DropClients < ActiveRecord::Migration[6.0]
  def change
    drop_table :clients
  end
end
