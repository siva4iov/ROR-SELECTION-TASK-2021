require 'rspec'
require_relative 'my_string'
include My_String
describe MyString do
  test_str = MyString.new('12345')
  it 'correctly initialize string' do
    expect(test_str.str).to eq '12345'
  end
  it 'correctly split string and put it in array' do
    expect(test_str.convert_to_ar(test_str.str)).to eq %w[1 2 3 4 5]
  end
  it 'correctly transform array into new string' do
    expect(test_str.ar_to_new(%w[1 2 3 4 5])).to eq '1112131415'
  end
  it 'change string to a new string' do
    begin_str = test_str.str
    test_str.next_str
    expect(begin_str).not_to eq test_str.str
  end
end
