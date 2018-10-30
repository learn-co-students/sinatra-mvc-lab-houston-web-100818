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

# def count_of_vowels
#     text.scan(/[aeoui]/).count
#   end
#
#   def count_of_consonants
#     text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
#   end
#
#   def most_used_letter
#     s1 = text.gsub(/[^a-z]/, '') # gets rid of spaces
#     arr = s1.split('')
#     arr1 = arr.uniq
#     arr2 = {}
#
#     arr1.map do |c|
#       arr2[c] =  arr.count(c)
#     end
#
#     biggest = { arr2.keys.first => arr2.values.first }
#
#     arr2.each do |key, value|
#       if value > biggest.values.first
#         biggest = {}
#         biggest[key] = value
#       end
#     end
#
#     biggest
#   end
