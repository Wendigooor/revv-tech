class AddAmountsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :amount_1, :decimal
    add_column :products, :amount_2, :decimal
    add_column :products, :amount_3, :decimal
    add_column :products, :amount_4, :decimal
  end
end
