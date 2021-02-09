# frozen_string_literal: true

class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.date :date
      t.string :name
      t.string :string
      t.integer :instructor_id
      t.integer :minutes
      t.integer :num_of_people

      t.timestamps
    end
  end
end
