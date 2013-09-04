class Klassplan < ActiveRecord::Base
  attr_accessible :before_klass_notification_at, :klass_id, :start_at
  belongs_to :klass
  belongs_to :room

  validates :klass, :presence => true
  validates :start_at, :presence => true
  validates :room, :presence => true  

  def end_at
    if klass && start_at
      start_at+klass.duration.day
    else
      DateTime.now+10000.day
    end
  end  
end
