# encoding: utf-8
class Course < Klass
	attr_accessible :room_id,:menu,:laser,:capacity, :chaban, :cycle, :duration, :frequency, :kind, :mic, :network, :projector, :remark, :score, :section, :sound, :state, :style, :title, :tools, :video_makeup,:need_before_task,:need_after_task,:before_task,:after_task
	Menu = %w(规划类 能力类 应聘类)

	Duration = (0.5..3.5).step(0.5)
  Kind = ('A'..'C').to_a
  Style = %w(讲座类 互动类 小组类)
	Capacity = [10,12,15,16,20,24,25,30,42]

	validates :capacity,:inclusion=>{:in=>Capacity}
  # validates :students, :presence => true
  # validates :rooms, :presence => true 
  validates :duration,:inclusion=>{:in=>Duration}
  validates :menu,:inclusion=>{:in=>Menu}
  validates :kind,:inclusion=>{:in=>Kind}
  validates :style,:inclusion=>{:in=>Style}
  validates :score,:numericality => { :greater_than=>0 }
  validates :after_task, :presence => true,:if=>'need_after_task == true'
  validates :before_task, :presence => true,:if=>'need_before_task == true'
end