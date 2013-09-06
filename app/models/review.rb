class Review < ActiveRecord::Base
  attr_accessible :person_id, :start_at, :title, :will,:end_at,:report_hard,:report_soft,:student_id
  belongs_to :user
  belongs_to :student

  validates :student,:presence=>true
  validates :title,:presence=>true
  validates :start_at,:presence=>true
  validates :end_at,:presence=>true

  validate :validate_duration

	def validate_duration
	  if end_at && (start_at > end_at)
	    errors.add(:end_at,"End odometer value must be greater than start odometer value.")
	  end
	end
end
