# encoding: utf-8
class Service < Klass
	attr_accessible :title,:menu,:capacity

	Menu = %w(个性化服务 储备VIP 应聘VIP)
	Capacity = [0,1]
	validates :capacity,:numericality => { :less_than_or_equal_to => 5,:greater_than=>0 }
  validates :menu,:inclusion=>{:in=>Menu}
end