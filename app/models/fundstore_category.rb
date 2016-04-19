class FundstoreCategory < ActiveRecord::Base
  belongs_to :fund_store
  belongs_to :fund
  has_many :fund_categorizations
end
