class AddCostToSession < ActiveRecord::Migration[6.0]
  def change
    add_column :sessions, :cost, :integer
  end
end
