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

    def divide(a, b)
      a / b 
    end

    def fizz_buzz(value)
      if value%15 == 0 then
         "FizzBuzz"
      elsif value%3 == 0 then "Fizz" 
      elsif value%5 == 0 then "Buzz"
      else nil
      end  
    end

    def hello(word)
    
      
    end
  end
end
