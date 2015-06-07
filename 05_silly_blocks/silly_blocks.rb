def reverser()
  words = yield().split " "
  ans = []

  words.each do |word|
    ans << word.reverse
  end

  return ans.join " "
end

def adder(x = 1)
  return yield + x
end

def repeater(x = 1)
  x.times { yield }
end
