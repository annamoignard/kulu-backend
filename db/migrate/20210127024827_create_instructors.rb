# frozen_string_literal: true

class CreateInstructors < ActiveRecord::Migration[6.0]
  def change
    create_table :instructors do |t|
      t.string :name
      t.string :string
      t.string :booking_id
      t.string :integer
      t.references :session, null: false, foreign_key: true

      t.timestamps
    end
  end
end
