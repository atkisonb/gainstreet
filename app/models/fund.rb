class Fund < ActiveRecord::Base
  belongs_to :user_account
  belongs_to :fund_manager
end
