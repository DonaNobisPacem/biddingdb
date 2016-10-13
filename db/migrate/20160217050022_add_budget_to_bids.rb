class AddBudgetToBids < ActiveRecord::Migration
  def change
    add_column :bids, :budget, :decimal, precision: 15, scale: 2
    add_column :bids, :amount, :decimal, precision: 15, scale: 2
  end
end
