class AddLength
  def self.add_length(str)
    array = str.split(" ")
    # array = ["apple", "ban"]
    result = []
    array.each do |word|
      result << ("#{word} " + word.length.to_s)
    end
    result
  end
end
