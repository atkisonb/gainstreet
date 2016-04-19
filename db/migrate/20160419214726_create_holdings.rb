class CreateHoldings < ActiveRecord::Migration
  def change
    create_table :holdings do |t|
      t.decimal :shares
      t.references :stock, index: true
      t.references :fund, index: true

      t.timestamps
    end
  end
end
