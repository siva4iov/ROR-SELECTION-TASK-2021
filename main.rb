require_relative 'my_string'
include My_String

string_gen = MyString.new('1')
6.times do
  string_gen.put
end
