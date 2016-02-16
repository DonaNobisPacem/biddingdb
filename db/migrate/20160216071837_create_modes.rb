class CreateModes < ActiveRecord::Migration
  def change
    create_table :modes do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
