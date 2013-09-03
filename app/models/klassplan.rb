class Klassplan < ActiveRecord::Base
  attr_accessible :before_klass_notification_at, :klass_id, :start_at
  belongs_to :klass
  validates :klass, :presence => true
  validates :start_at, :presence => true
  
end
