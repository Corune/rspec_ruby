class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours   = String.new
    minutes = String.new
    seconds = String.new

    hours_i = @seconds / 3600
    seconds_left = @seconds - hours_i * 3600
    minutes_i = seconds_left / 60
    seconds_left = seconds_left - minutes_i * 60

    return padded(hours_i) + ":" + padded(minutes_i) + ":" + padded(seconds_left)
  end

  def padded(num)
    if (num < 10)
      return "0" + num.to_s
    else
      return num.to_s
    end
  end
end
