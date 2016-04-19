class Fund < ActiveRecord::Base
  belongs_to :user_account
  belongs_to :fund_manager
  has_many :stocks
  has_many :fundstore_categories
end
