class Room < ActiveRecord::Base
  attr_accessible :mic, :projector, :sound, :title, :laser

  has_many :klasses

  def available_for(klass)
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
end
