require "mini_test_practice/version"

module MiniTestPractice
  # Your code goes here...
  class MyClass
    def odd?(value)
      (value % 2) == 1
    end

    def check_number?(value)
      (value >= 1000) and (value <= 9999) and (value % 2) == 0
    end

    def enough_length?(str)
      (str.length >= 3) and (str.length <= 8)
    end
  end
end
