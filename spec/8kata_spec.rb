require 'rspec'
require "./lib/8kata/min_max"
require "./lib/8kata/first_elements"
require "./lib/8kata/skip_array"

RSpec.describe EightKata do
  it "minmax_by" do
    list = [13,2,5,4]
    expect(EightKata.minmax_by(list){|item| item}).to eq([2,13])
  end

  it "gets nil with empty array" do
    list = []
    expect(EightKata.minmax_by(list){|item| item}).to eq([nil,nil])
  end

  it "gets first elements of an array - 22" do
    list = [0,1,2,3,5,8,13]
    n = nil
    expect(FirstElements.first(list)).to eq(0)
    expect(FirstElements.first(list, 3)).to eq([0,1,2])
  end

  it "can skip over elements as long as block returns true" do
    list = [0,1,2,3,5,8,13]
    expect(SkipArray.drop_while(list){|item| item < 3}).to eq([3, 5, 8, 13])
    expect(SkipArray.drop_while(list){|item| item < 8}).to eq([8, 13])
    expect(SkipArray.drop_while(list){|item| item < 5}).to eq([5, 8, 13])
  end
end
