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
  return word.downcase == "and"
end

def article?(word)
  temp = word.downcase
  return (temp == "the" or temp == "a" or temp == "an")
end

def preposition?(word)
  temp = word.downcase
  return (temp == "in" or temp == "of")
end
