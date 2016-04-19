class CreateUserHoldings < ActiveRecord::Migration
  def change
    create_table :user_holdings do |t|
      t.decimal :nav_shares_owned
      t.decimal :amount_invested
      t.references :user_account, index: true
      t.references :fund, index: true

      t.timestamps
    end
  end
end
