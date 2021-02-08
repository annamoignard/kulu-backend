# frozen_string_literal: true

class ModifyInstructorId < ActiveRecord::Migration[6.0]
  def change
    remove_column :sessions, :instructor_id
  end
end
