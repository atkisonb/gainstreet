class FundManagement < ActiveRecord::Base
  belongs_to :fund_manager
  belongs_to :fund
end
