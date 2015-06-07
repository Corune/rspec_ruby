def translate(sentence)
  words = sentence.split " "
  ans = []

  words.each do |word|
    ans << translate_word(word)
  end

  return ans.join " "
end

def translate_word(word)
  ans = String.new

  if (is_vowel?(word[0]))
    ans = word + "ay"
  elsif (word[0] == "q" && word[1] == "u")
    ans = word[2..(word.length - 1)] + "quay"
  else
    i = 0
    temp = String.new

    while (!is_vowel?(word[i]) or (word[i] == "q" and word[i + 1] == "u"))
      if (word[i] == "q" and word[i + 1] == "u")
        temp += "qu"
        i += 2
      else
        temp += word[i]
        i += 1
      end
    end

    ans = word[i..(word.length - 1)] + temp + "ay"
  end
=begin The old consonant solving structure.
  elsif (!is_vowel?(word[0]) and !is_vowel?(word[1]))
    temp = word[2..(word.length - 1)]
    ans = temp + word[0..1] + "ay"
  else
    temp = word[1..(word.length - 1)]
    ans = temp + word[0] + "ay"
  end
=end

  return ans
end

def is_vowel?(letter)
  vowel = /[aeiou]/
  flag = letter =~ vowel

  if (flag == 0)
    return true
  else
    return false
  end
end
