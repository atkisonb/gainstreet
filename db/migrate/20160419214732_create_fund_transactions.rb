class CreateFundTransactions < ActiveRecord::Migration
  def change
    create_table :fund_transactions do |t|
      t.decimal :market_shares
      t.decimal :amount
      t.string :market_action
      t.references :stock, index: true
      t.references :fund, index: true

      t.timestamps
    end
  end
end
