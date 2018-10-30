class PigLatinizer

  def initialize
  end

  def vowel?(letter)
    !letter.scan(/[AEOUIaeoui]/).empty?
  end

  def first_vowel_index(word)
    word.split('').find_index do | letter |
      vowel?(letter)
    end
  end

  def piglatinize_word(word)
    index = first_vowel_index(word)
    case index
    when 0
      word + "way"
    else
      word[index..-1] + word[0...index] + "ay"
    end

  end

  def piglatinize(words)
    words.split(" ").map do | word |
      piglatinize_word(word)
    end.join(" ")
  end

end
