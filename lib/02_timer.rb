class Timer
  attr_accessor :seconds
  def initialize(seconds = 0)
    @seconds = seconds
  end

  def padded(number)
    number < 10 ? "0#{number}" : "#{number}"
  end

  def hour
    Integer(seconds/3600)
  end

  def minutes
    Integer((seconds % 3600)/ 60)
  end

  def second
    Integer(seconds % 60)
  end

  def time_string
    "#{padded(hour)}:#{padded(minutes)}:#{padded(second)}"
  end

end
