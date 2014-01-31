def adjacent_words(word)
  dictionary = File.readlines("dictionary.txt").map {|word| word.chomp}

  candidate_words = dictionary.select {|entry| entry.length == word.length}
  all_reachable_words = []

  word_letters = word.split('')
  word_letters.count.times do |position|
    ("a".."z").to_a.each do |char|
      word_letters[position] = char
      temp_word = word_letters.join('')
      if candidate_words.include?(temp_word)
        all_reachable_words << temp_word
      end
      word_letters = word.split('')
    end
  end

  #all_reachable_words.delete(word)
  all_reachable_words.uniq!
end

