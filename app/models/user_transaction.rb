class UserTransaction < ActiveRecord::Base
  belongs_to :user_account
  belongs_to :fund
end
