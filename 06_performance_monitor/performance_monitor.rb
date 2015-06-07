require "time"

def measure(times = 1)
  gather = 0.0
  count = 0
  
  times.times do
    before = Time.now
    yield
    after = Time.now

    gather += (after - before)
    count += 1
  end

  return gather / count
end
