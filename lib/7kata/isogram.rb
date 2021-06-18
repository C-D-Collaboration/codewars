class Isogram
  def self.is_isogram(string)
    char_array = string.downcase.split('')
    sorted_arr = char_array.sort
    sorted_arr.each_with_index do |char, index|
      if char == sorted_arr[index + 1]
        return false
      end
    end
    true
  end
end
