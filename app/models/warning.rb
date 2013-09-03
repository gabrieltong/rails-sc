class Warning < ActiveRecord::Base
  attr_accessible :title, :user_id
  belongs_to :person
end
