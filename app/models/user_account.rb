class UserAccount < ActiveRecord::Base
  belongs_to :user
  belongs_to :fund
  has_many :user_transactions
end
