# encoding: utf-8
class Klass < ActiveRecord::Base
  attr_accessible :room_id,:menu,:laser,:capacity, :chaban, :cycle, :duration, :frequency, :kind, :mic, :network, :projector, :remark, :score, :section, :sound, :state, :style, :title, :tools, :video_makeup,:need_before_task,:need_after_task,:before_task,:after_task
  has_and_belongs_to_many :people,:uniq => true  
  has_many :klassplans
  belongs_to :room

  Duration = (0.5..3.5).step(0.5)
  KlassMenu = %w(规划类 能力类 应聘类)
  ServiceMenu = %w(个性化服务 储备VIP 应聘VIP)
  State = %w(klass service)
  Kind = ('A'..'C').to_a
  Style = %w(讲座类 互动类 小组类)
  KlassCapacity = [10,12,15,16,20,24,25,30,42]

  validates :title, :presence => true  
  validates :state,:inclusion=>{:in=>State}

  state_machine :state,:initial=>'klass' do 
    state 'klass' do      
      validates :capacity,:inclusion=>{:in=>KlassCapacity}
      validates :people, :presence => true
      validates :room, :presence => true  
      validates :duration,:inclusion=>{:in=>Duration}
      validates :menu,:inclusion=>{:in=>KlassMenu}
      validates :kind,:inclusion=>{:in=>Kind}
      validates :style,:inclusion=>{:in=>Style}
      validates :score,:numericality => { :greater_than=>0 }
      validates :after_task, :presence => true,:if=>'need_after_task == true'
      validates :before_task, :presence => true,:if=>'need_before_task == true'
    end

    state 'service' do
      validates :capacity,:numericality => { :less_than_or_equal_to => 5,:greater_than=>0 }
      validates :menu,:inclusion=>{:in=>ServiceMenu}
    end
  end  

  private 

  # def 
end
