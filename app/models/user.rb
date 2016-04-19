class User < ActiveRecord::Base
  has_many :bank_accounts
  has_many :user_accounts
end
