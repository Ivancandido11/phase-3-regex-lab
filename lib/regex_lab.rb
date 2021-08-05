def starts_with_a_vowel?(word)
  word.downcase.scan(/^[aeiou]/).size > 0 ? true : false
end

def words_starting_with_un_and_ending_with_ing(text)
  words_matching = []
  array_text = text.split
  array_text.each do |word|
    if word.match(/^un/) != nil && word.match(/ing$/) != nil
      words_matching << word
    end
  end
  words_matching
end

def words_five_letters_long(text)
  words = text.split
  words.grep(/^\w{5}\z/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  text.match(/^[A-Z]/) != nil && text.match(/\W$/) != nil ? true : false
end

def valid_phone_number?(phone)
  number = phone.scan(/(\d)/)
  number.join.match(/\d{10}/) != nil ? true : false
end
