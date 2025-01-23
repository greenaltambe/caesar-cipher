def caesar_cipher(string, shift)
  shift = shift%26
  string.split("").map do |character| 
    if character.match(/[a-z]/)
      ((character.ord - "a".ord + shift)%26  + "a".ord).chr
    elsif character.match(/[A-Z]/)
      ((character.ord - "A".ord + shift)%26 + "A".ord).chr
    else
      character
    end
  end.join
end

puts caesar_cipher("What a string!", 5)