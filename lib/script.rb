require "pry-byebug"
class Cipher
    def caesar_cipher(string, shifter)
        letter_to_number = string.split('').map do |letter|
            if (letter.ord >= 65) and (letter.ord <= 90) # Letters are between A and Z
                if (letter.ord - shifter) < 65 # Loop back to Z
                    90 - shifter + 1
                else letter.ord - shifter
                end
            elsif (letter.ord >= 97) and (letter.ord <= 122) # Letters are between a and z
                if (letter.ord - shifter) < 97 # Loop back to z
                    122 - shifter + 1
                else letter.ord - shifter
                end
            else letter
            end
        end
        number_to_letter = letter_to_number.map do |number|
            number.chr
        end
        return_string = number_to_letter.join
    end
end