class PigLatinizer

  def vowel?(letter)
    !letter.scan(/[AEOUIaeoui]/).empty?
  end

  def first_vowel_index(word)
    word.split('').find_index do | letter |
      vowel?(letter)
    end
  end

  def piglatinize_word(word)
    first_vowel = first_vowel_index(word)
    case first_vowel
    when 0
      word + "way"
    else
      word[first_vowel..-1] + word[0...first_vowel] + "ay"
    end

  end

  def piglatinize(words)
    words.split(" ").map do | word |
      piglatinize_word(word)
    end.join(" ")
  end

end
