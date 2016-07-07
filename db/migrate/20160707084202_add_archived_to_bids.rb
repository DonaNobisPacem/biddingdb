class AddArchivedToBids < ActiveRecord::Migration
  def change
    add_column :bids, :archived, :boolean
  end
end
