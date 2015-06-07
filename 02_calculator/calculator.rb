def add(*nums)
  math_inject(*nums, :+)
end

def subtract(*nums)
  math_inject(*nums, :-)
end

def sum(nums)
  if (nums == [])
    return 0
  end

  return add(*nums)
end

def multiply(*nums)
  math_inject(*nums, :*)
end

def power(base, pow)
  ans = 1

  pow.times do
    ans *= base
  end

  return ans
end

def factorial(num)
  ans = 1

  num.times do |i|
    ans *= i + 1
  end

  return ans
end

def math_inject(*nums, sym)
  return nums.inject(sym)
end
