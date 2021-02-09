# frozen_string_literal: true

class CleanUpSessions < ActiveRecord::Migration[6.0]
  def change
    remove_column :sessions, :string
    remove_column :sessions, :num_of_people
  end
end
