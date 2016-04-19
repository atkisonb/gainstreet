class CreateFunds < ActiveRecord::Migration
  def change
    create_table :funds do |t|
      t.string :fund_name
      t.text :fund_description
      t.text :fund_strategy
      t.text :strategy_why_i_buy
      t.text :strategy_why_i_sell
      t.text :strategy_allocation_discipline
      t.text :strategy_other_notes
      t.decimal :nav_shares
      t.references :user_account, index: true
      t.references :fund_manager, index: true

      t.timestamps
    end
  end
end
