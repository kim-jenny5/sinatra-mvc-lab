class PigLatinizer

    def piglatinize(str)
        str.split(" ").map do |word|
            vowel = "aeiouAEIOU"
            if vowel.include?(word[0])
                word << "way"
            else
                new_vowel = word.split("").detect{|letter| vowel.include?(letter)}
                vowel_index = word.index(new_vowel)
                const = word.slice(0...vowel_index)
                leftovers = word.slice(vowel_index..)
                leftovers + const +  "ay"
            end
        end.join(" ")

        # text = input.split(" ")     
        
        # text.map do |word|
        #     @first_letter = word.scan(/[a-zA-Z]/).first
            
        #     binding.pry

        #     # if first_letter.include?(vowels)
        #     if @first_letter.match(/[aeiouAEIOU]/)
        #         @vowel_as_first_letter = "#{@first_letter}way"
        #     else
        #         @rest_of_word = word.split(/^[a-z]/).last
        #         @detect_if_vowel = @rest_of_word.split("")

        #         @detect_if_vowel.each do |letter|
        #             if letter.match(/[aeiou]/)
        #                 index_num = @detect_if_vowel.index(letter)
        #                 word_length = @detect_if_vowel.length
        #                 @separated = @detect_if_vowel.slice(index_num, word_length).join("")
        #             end
        #         end

        #         @completed_pig = "#{@separated}#{@first_letter}ay"
        #         # binding.pry
        #         # if @detect_if_vowel.match(/[^aeiou]/)

        #         # end

        #         # if @rest_of_word
        #         # @complete = "#{@rest_of_word}#{@first_letter}ay"
        #     end

            
        # end#.join(" ")
    end
end