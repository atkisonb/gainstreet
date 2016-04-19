class Fund < ActiveRecord::Base
  belongs_to :user_account
  belongs_to :fund_manager
  has_many :stocks
  has_many :fundstore_categories
  has_many :fund_managers
  has_many :user_transactions
  has_many :user_accounts
  has_many :fund_managements
  has_many :fund_transactions
  has_many :holdings
  has_many :user_holdings
  has_one :fund_cash
end
