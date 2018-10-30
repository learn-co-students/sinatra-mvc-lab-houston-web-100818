class PigLatinizer

  def initialize
  end

  def vowel?(letter)
    !letter.scan(/[AEOUIaeoui]/).empty?
  end

  def piglatinize_word(word)
    first_vowel_index = word.split('').find_index do | letter |
      vowel?(letter)
    end

    case first_vowel_index
    when 0
      word + "way"
    else
      word[first_vowel_index..-1] + word[0...first_vowel_index] + "ay"
    end

  end

  def piglatinize(words)
    words.split(" ").map do | word |
      piglatinize_word(word)
    end.join(" ")
  end

end
