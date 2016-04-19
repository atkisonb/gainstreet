class CreateFundStores < ActiveRecord::Migration
  def change
    create_table :fund_stores do |t|

      t.timestamps
    end
  end
end
