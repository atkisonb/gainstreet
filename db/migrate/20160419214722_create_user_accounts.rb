class CreateUserAccounts < ActiveRecord::Migration
  def change
    create_table :user_accounts do |t|
      t.integer :account_type_id
      t.string :user_account_number
      t.references :user, index: true
      t.references :fund, index: true

      t.timestamps
    end
  end
end
