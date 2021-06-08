class InsertDashes
  def self.insert_dash(num)
    num_array = num.to_s.split('')
    #["4", "5", "4", "7", "9", "3"]
    i = 0
    
    while i < num_array.length do
      if num_array[i].to_i.odd? && num_array[i + 1].to_i.odd?
        num_array[i] += "-"
      end
      i += 1
    end
    num_array.join
  end
end
