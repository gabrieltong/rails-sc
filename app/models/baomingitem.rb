class Baomingitem < ActiveRecord::Base
  attr_accessible :baoming_id, :end_at, :free, :klass_id
  belongs_to :Baoming
end
