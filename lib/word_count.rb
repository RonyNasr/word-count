require('pry')

class String
  define_method (:count_words) do |word_to_count|
    input_string = self.downcase().gsub(/[^a-zA-Z. ]/,"")
    words = input_string.split()
    word_count  = 0

    words.each do |word|
      if word == word_to_count
        word_count += 1
      end
    end

    word_count #return the count
  end
end
