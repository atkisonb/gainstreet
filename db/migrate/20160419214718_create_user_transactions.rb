class CreateUserTransactions < ActiveRecord::Migration
  def change
    create_table :user_transactions do |t|
      t.decimal :transaction_dollar_amount
      t.decimal :issued_nav_shares
      t.string :user_action
      t.references :user_account, index: true
      t.references :fund, index: true

      t.timestamps
    end
  end
end
