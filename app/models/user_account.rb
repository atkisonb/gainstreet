class UserAccount < ActiveRecord::Base
  belongs_to :user
  belongs_to :fund
  has_many :user_transactions
  has_many :funds
  has_many :user_holdings
end
