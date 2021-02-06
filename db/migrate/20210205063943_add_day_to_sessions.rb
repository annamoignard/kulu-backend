class AddDayToSessions < ActiveRecord::Migration[6.0]
  def change
    add_column :sessions, :day, :string
  end
end
