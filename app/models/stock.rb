class Stock < ActiveRecord::Base
  belongs_to :fund
  has_many :fund_transactions
end
