class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.string :title
      t.string :contractor
      t.integer :number
      t.datetime :preprocurement
      t.datetime :prebidding
      t.datetime :bidding
      t.datetime :postqualification
      t.datetime :noa
      t.datetime :purchase
      t.datetime :ntp
      t.text :members
      t.text :remarks

      t.timestamps null: false
    end
  end
end
