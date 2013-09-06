class Market < ActiveRecord::Base
  attr_accessible :title
  has_and_belongs_to_many :people,:uniq=>true

  attr_accessible :attachment
  has_attached_file :attachment

  validates :title, :presence => true  
  validates_attachment_content_type :attachment,:content_type=>["application/vnd.ms-excel",     
             "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",]


  def import
    
  end
end
