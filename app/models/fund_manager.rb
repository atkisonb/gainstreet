class FundManager < ActiveRecord::Base
  has_many :fund_managements
  has_many :funds
  validates_formatting_of :manager_email, using: :email
end
