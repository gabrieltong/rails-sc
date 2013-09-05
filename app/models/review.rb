class Review < ActiveRecord::Base
  attr_accessible :person_id, :start_at, :title, :will
end
