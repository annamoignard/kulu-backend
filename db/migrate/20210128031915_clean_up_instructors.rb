class CleanUpInstructors < ActiveRecord::Migration[6.0]
  def change
    remove_column :instructors, :booking_id
    remove_column :instructors, :string
    remove_column :instructors, :integer
    remove_column :instructors, :session_id

  end
end
