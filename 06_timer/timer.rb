class Timer
  #write your code here
  attr_accessor :seconds
  def initialize
  	@seconds=0
  end

  def time_string2 #attempt1
  	hour=seconds/3600
  	if hour<10
  		hour = "0" + hour.to_s
  	else
  		hour = hour.to_s
  	end
  	minute=seconds/60%60
  	if minute<10
  		minute = "0" + minute.to_s
  	else
  		minute = minute.to_s
  	end
  	second = seconds%60
  	if second<10
  		second = "0" + second.to_s
  	else
  		second = second.to_s
  	end
  	return "#{hour}:#{minute}:#{second}"
  end

  def time_string #refactor
  	array=[seconds/3600,seconds/60%60,seconds%60]
  	array = array.map do |value|
  		if value<10
  			"0"+value.to_s
  		else
  			value.to_s
  		end
  	end
  	array.join(":")
  end
end
