class PigLatinizer

  def initialize
  end

  def vowel?(letter)
    !letter.scan(/[AEOUIaeoui]/).empty?
  end

  def piglatinize_word(word)
    first_letter = word[0]
    second_letter = word[1]
    third_letter = word[2]

    case vowel?(first_letter)

    when true
      word + "way"

    when false

      case vowel?(second_letter)

      when true
        word[1..-1] + word[0] + "ay"

      when false

        case vowel?(third_letter)

        when true
          word[2..-1] + word[0..1] + "ay"

        when false
          word[3..-1] + word[0..2] + "ay"
        end

      end

    end

  end

  def piglatinize(words)
    words.split(" ").map do | word |
      piglatinize_word(word)
    end.join(" ")
  end

end
