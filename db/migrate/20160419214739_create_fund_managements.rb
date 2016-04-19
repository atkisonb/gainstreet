class CreateFundManagements < ActiveRecord::Migration
  def change
    create_table :fund_managements do |t|
      t.string :relationship_type
      t.references :fund_manager, index: true
      t.references :fund, index: true

      t.timestamps
    end
  end
end
