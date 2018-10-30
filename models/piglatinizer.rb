class PigLatinizer


    def piglatinize(words)

        
         latinized = []

         words.split(' ').each do |word|
            
            if ['a','e','i','o','u', 'A','E','I','O','U'].include?(word[0]) 
                latinized << word + 'way'
                
            elsif ['a','e','i','o','u'].include?(word[1])
                    word << word[0]
                    latinized << word[1..-1] + 'ay'
            elsif ['a','e','i','o','u'].include?(word[2]) 
                word << word[0]
                word << word[1]

                latinized << word[2..-1] + 'ay'
            else 
                word << word[0]
                word << word[1]
                word << word[2]
                latinized << word[3..-1] + 'ay'
            end
        end 
        latinized.join(' ')
    end 

end 