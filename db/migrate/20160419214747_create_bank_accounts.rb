class CreateBankAccounts < ActiveRecord::Migration
  def change
    create_table :bank_accounts do |t|
      t.string :bank_account_number
      t.references :user, index: true

      t.timestamps
    end
  end
end
