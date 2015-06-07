def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, num = 2)
  ans = str
  (num - 1).times do
    ans += " " + str
  end

  ans
end

def start_of_word(str, depth)
  return str[0..(depth - 1)]
end

def first_word(str)
  return str.split(" ")[0]
end

def titleize(str)
  words = str.split " "
  title_words = [words[0].capitalize]
  words = words.drop(1)

  words.each do |word|
    if (word == "the" or word == "over" or word == "and")
      title_words << word
    else
      title_words << word.capitalize
    end
  end

  return title_words.join " ".capitalize
end
