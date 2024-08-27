def caesar_cipher(user_string,n)
  alphabet = ('a'..'z').to_a

  split_sentence = user_string.split(" ")
  
  final_sentence = []
  
  split_sentence.each do |word|
    final_word = []
    split_word = word.split("")
    split_word.each do |letter|
      if alphabet.include?(letter)
        idx = alphabet.find_index(letter)
        if(idx+n <= n)
          final_word.push(alphabet[idx+n])
        else
          final_word.push(alphabet[(idx+n)-26])
        end
          
      else
        final_word.push(letter)
      end
    end
    final_sentence.push(final_word.join(""))
  end

  final_sentence.join(" ").capitalize


  
end

puts caesar_cipher("This is caesar cipher!",5)