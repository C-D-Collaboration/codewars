class Vowel2Index
  def self.vowel_2_index(string)
    result = ''
    vowel_array = "aeiou".chars
    counter = 1
    string.chars.each do |letter|
      if vowel_array.include?(letter.downcase)
        result += counter.to_s
      else
        result += letter
      end
      counter += 1
    end
    result
  end
end
