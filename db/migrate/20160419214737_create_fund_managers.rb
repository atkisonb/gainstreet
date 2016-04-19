class CreateFundManagers < ActiveRecord::Migration
  def change
    create_table :fund_managers do |t|
      t.string :first_name
      t.string :last_name
      t.string :manager_email
      t.text :about
      t.string :manager_facebook
      t.string :manager_instagram
      t.string :manager_location
      t.string :manager_school
      t.string :manager_twitter
      t.string :manager_years_experience

      t.timestamps
    end
  end
end
