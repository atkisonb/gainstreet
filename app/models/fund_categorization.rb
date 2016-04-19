class FundCategorization < ActiveRecord::Base
  belongs_to :fundstore_category
  belongs_to :fund
end
