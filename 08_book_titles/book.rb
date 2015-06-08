class Book
  attr_accessor :title

  def title
    words = @title.split " "
    ans = String.new

    words.drop(1).each do |word|
      if (!conjunction?(word) and
          !article?(word)     and
          !preposition?(word))
        ans += " " + word.capitalize
      else
        ans += " " + word
      end
    end

    return words[0].capitalize + ans
  end
end

def conjunction?(word)
  temp = word.downcase

  if (temp == "and")
    return true
  else
    return false
  end
end

def article?(word)
  temp = word.downcase

  if (word == "the" or
      word == "a"   or
      word == "an")
    return true
  else
    return false
  end
end

def preposition?(word)
  temp = word.downcase

  if (word == "in" or
      word == "of")
    return true
  else
    return false
  end
end
