def caesar_cipher(string, shift)
  alphabet = ("a".."z").to_a
  string = string.split("")

string.map do |character| 
    if alphabet.include?(character)
      alphabet[(character.downcase.ord - 97 + shift)%26]
    elsif alphabet.include?(character.downcase)
      alphabet[(character.downcase.ord - 97 + shift)%26].upcase
    else
      character
    end
  end.join
end

puts caesar_cipher("What a string!", 5)