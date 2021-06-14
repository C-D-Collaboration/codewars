class Encode
  def self.encode(string)
    result = ''
    alpha = ('a'..'z').to_a
    string.chars.each do |letter|
      if alpha.include?(letter.downcase)
        result += (alpha.index(letter.downcase) + 1).to_s
      else
        result += letter
      end
    end
    result
  end
end
