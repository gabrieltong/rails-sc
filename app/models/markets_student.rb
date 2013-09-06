class MarketsStudent < ActiveRecord::Base
  attr_accessible :market_id, :student_id
  belongs_to :market
  belongs_to :student
end
