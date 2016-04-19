class FundManager < ActiveRecord::Base
  has_many :fund_managements
  has_many :funds
end
