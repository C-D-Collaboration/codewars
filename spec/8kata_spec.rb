require 'rspec'
require "./lib/8kata/min_max"
require "./lib/8kata/first_elements"
require "./lib/8kata/insert_dashes"

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

  it "inserts a dash between each two odd numbers" do
    expect(InsertDashes.insert_dash(454793)).to eq('4547-9-3')
    expect(InsertDashes.insert_dash(123456)).to eq('123456')
    expect(InsertDashes.insert_dash(1003567)).to eq('1003-567')
    expect(InsertDashes.insert_dash(24680)).to eq('24680')
    expect(InsertDashes.insert_dash(13579)).to eq('1-3-5-7-9')
  end
end
