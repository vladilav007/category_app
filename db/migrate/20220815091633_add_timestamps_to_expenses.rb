class AddTimestampsToExpenses < ActiveRecord::Migration[7.0]
  def change
    add_column :expenses, :created_at, :date, null: false
    add_column :expenses, :updated_at, :datetime, null: false
  end
end
