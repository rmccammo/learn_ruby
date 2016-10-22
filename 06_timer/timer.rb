class Timer
  #write your code here
  def initialize()
  	@seconds = 0 #Total seconds to time
  	@minutes = 0
  	@hours = 0
  end

  def seconds
  	return @seconds
  end

  def seconds=(new_seconds)
  	@seconds = new_seconds
  end

  def padded(number)
  	if(number < 10) then
  		return "0" + number.to_s
  	else
  		return number.to_s
  	end
  end

  def time_string()
  	#Convert seconds to minutes
  	@minutes = @seconds / 60
  	@seconds = @seconds % 60

  	#Convert minutes to hours
  	@hours = @minutes / 60
  	@minutes = @minutes % 60

  	return padded(@hours) + ":" + padded(@minutes) + ":" + padded(@seconds)
  end

end
