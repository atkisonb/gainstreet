class CreateFundCashes < ActiveRecord::Migration
  def change
    create_table :fund_cashes do |t|
      t.decimal :amount
      t.references :fund, index: true

      t.timestamps
    end
  end
end
