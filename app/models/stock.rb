class Stock < ActiveRecord::Base
  belongs_to :fund
  has_many :fund_transactions
  has_many :funds
end
