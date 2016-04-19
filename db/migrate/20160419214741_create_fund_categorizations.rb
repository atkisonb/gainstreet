class CreateFundCategorizations < ActiveRecord::Migration
  def change
    create_table :fund_categorizations do |t|
      t.references :fundstore_category, index: true
      t.references :fund, index: true

      t.timestamps
    end
  end
end
