class AddTotalPriceToCategories < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :total_price, :float, default: "0", null: false
  end
end
