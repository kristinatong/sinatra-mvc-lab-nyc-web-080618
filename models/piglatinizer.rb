class PigLatinizer

  def initialize
  end

  def piglatinize_word(word)
    vowels = "aeiouyAEIOUY"
    letters = word.split("")
    if vowels.include?(word[0])
      word + "way"
    else
      first_vowel_index = letters.find_index do |letter|
        vowels.include?(letter)
      end
      word[first_vowel_index,word.length] + word[0,first_vowel_index] + "ay"
    end
  end

  def piglatinize(string)
    words = string.split(" ")
    piglatinized_words = words.map do |word|
      piglatinize_word(word)
    end
    piglatinized_words.join(" ")
  end

end
