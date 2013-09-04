class Room < ActiveRecord::Base
  attr_accessible :mic, :projector, :sound, :title, :laser

  has_and_belongs_to_many :klasses,:uniq=>true
  has_many :klassplans

  def available_for_klass(klass)
  	if klass.projector == true && self.projector == false
  		return false
  	end

  	if klass.sound == true && self.sound == false
  		return false
  	end

  	if klass.mic == true && self.mic == false
  		return false
  	end

  	return true
  end

  def available_for_klassplan(klassplan)
    return false if klassplan.start_at == nil || klassplan.end_at == nil
    klassplans.each do |_klassplan|
      return false if !(klassplan.end_at <= _klassplan.start_at || _klassplan.end_at <= klassplan.start_at)
    end
    return true
  end

end
