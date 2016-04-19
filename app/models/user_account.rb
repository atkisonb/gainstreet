class UserAccount < ActiveRecord::Base
  belongs_to :user
  belongs_to :fund
end
