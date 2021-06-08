require 'rspec'
require "./lib/7kata/add_length"

RSpec.describe AddLength do
  it 'returns an array/list with the length of each word added to each element' do
    expect(AddLength.add_length('apple ban')).to eq(["apple 5", "ban 3"])
    expect(AddLength.add_length('you will win')).to eq(["you 3", "will 4", "win 3"])
    expect(AddLength.add_length('you')).to eq(["you 3"])
    expect(AddLength.add_length('y')).to eq(["y 1"])
  end
end
