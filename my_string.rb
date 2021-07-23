
module My_String
  # inherit from String to show that I can inherit
  class MyString < String
    attr_accessor :str

    def initialize(*several_variants)
      super
      @str = several_variants[0]
    end

    # splitting string to parts with same symbols. "11222444" > [11, 222, 444]
    def convert_to_ar(str)
      bgn = 0
      cur = str[bgn]
      ar = []
      unless str.empty?
        str.length.times do |ind|
          next unless str[ind] != cur

          ar.append(str[bgn, ind - bgn])
          bgn = ind
          cur = str[ind]
        end
        ar.append(str[bgn, str.length])
      end
      ar
    end

    # creating new string from ar. [11, 222, 444] > "213234"
    def ar_to_new(ar)
      new_str = ''
      ar.each do |sub|
        new_str += sub.length.to_s + sub[0]
      end
      new_str
    end

    # combining previous methods
    def next_str
      ar = convert_to_ar(@str)
      @str = ar_to_new(ar)
    end

    # output new string in terminal
    def put
      next_str
      puts(@str)
    end
  end
end
