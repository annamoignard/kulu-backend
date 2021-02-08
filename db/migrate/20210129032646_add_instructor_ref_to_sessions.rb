# frozen_string_literal: true

class AddInstructorRefToSessions < ActiveRecord::Migration[6.0]
  def change
    add_reference :sessions, :instructor, null: false, foreign_key: true
  end
end
