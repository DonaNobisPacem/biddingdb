class AddModeToBids < ActiveRecord::Migration
  def change
    add_column :bids, :mode, :integer
  end
end
