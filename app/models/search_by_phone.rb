class SearchByPhone
  include ActiveModel::Validations

  validates_presence_of :phone

  attr_accessor :phone
  def initialize(phone=nil)
    @phone = phone
  end
end