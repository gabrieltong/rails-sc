class Baomingitem < ActiveRecord::Base
  attr_accessible :baoming_id, :end_at, :free, :klass_id
  belongs_to :baoming
  belongs_to :klass

  validates :klass, :presence => true
  validates :baoming, :presence => true
  validates :end_at, :presence => true,:if=>"klass && klass.kind == 'A'"
end
