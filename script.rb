require 'pry-byebug'
def cipher(string, shift)
    alphabet = ('a'..'z').to_a
    array = string.split('').map { |letter| alphabet.index(letter) - shift}
    
    new_array = array.map { |number| number.to_i.to_s(27).tr('0-9a-q', 'a-z')}
end

cipher('hello', 1)
# number.to_i.to_s(27).tr('0-9a-q', 'a-z')
# This cipher maps each letter to a number and then shifts it X numbers over
# Convert each number to a letter
# Unsplit the string array
# Say the main word

#Problems: Does not wrap from A to Z