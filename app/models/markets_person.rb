class MarketsPerson < ActiveRecord::Base
  attr_accessible :market_id, :person_id, :state
  belongs_to :market
  belongs_to :person
end
