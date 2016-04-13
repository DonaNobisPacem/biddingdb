class AddInfoToBids < ActiveRecord::Migration
  def change
    add_column :bids, :addtl_info, :text
  end
end
