# Create a method first that accepts a list and an optional parameter n. If n is unspecified, it returns just the first element of the list. If n is specified, it returns up to that number of elements from the beginning of the list.

# If you need help, here's a reference:

# http://www.rubycuts.com/enum-first

class FirstElements
  # def self.first(list, n = nil)
  #   list.first(*n)
  # end

  # def self.first list, n=nil
  #   return list[0] if n == nil
  #   list[0..n-1]
  # end

  def self.first list, n=nil
    if n
      list.take(n)
    else
      list.first
    end
  end
end