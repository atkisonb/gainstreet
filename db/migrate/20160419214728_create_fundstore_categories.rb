class CreateFundstoreCategories < ActiveRecord::Migration
  def change
    create_table :fundstore_categories do |t|
      t.text :category_heading
      t.text :category_subheading
      t.references :fund_store, index: true
      t.references :fund, index: true

      t.timestamps
    end
  end
end
