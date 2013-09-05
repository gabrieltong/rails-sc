# encoding: utf-8
class Baoming < ActiveRecord::Base
  attr_accessible :discount_way, :important, :installment, :installment_duration, :installment_last, :installment_value, :makeup, :next, :payment_way, :person_id
  belongs_to :person
  has_many :baomingitems
  DiscountWay = %w(优惠金额 优惠算法)
  PaymentWay = %w(储蓄卡 信用卡 转账 现金)
  Important = %w(交钱多 水平好 影响力大 重点市场)
  # 0：不需要主动约；1：提醒应聘VIP/SVIP（应聘季暑假前、暑假后）；2：提醒应聘课程（应聘季暑假前、暑假后）；3、提醒储备VIP/SVIP（学期末、学期初）；4、按学期报（学期末学期初）；5、按课程报（最后一门课程结束前1周）
  Makeup = (0..5).to_a
  Will = %w(待报名 强烈 待影响 不合适)
  
  validates :baomingitems, :presence => true
end
