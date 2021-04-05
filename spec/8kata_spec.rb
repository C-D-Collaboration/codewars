require 'rspec'
require "./lib/8kata/min_max"

RSpec.describe EightKata do
  it "minmax_by" do
    list = [13,2,5,4]
    expect(EightKata.minmax_by(list){|item| item}).to eq([2,13])
  end

  it "gets nil with empty array" do
    list = []
    expect(EightKata.minmax_by(list){|item| item}).to eq([nil,nil])
  end
end
