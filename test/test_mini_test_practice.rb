require 'minitest_helper'

class TestMiniTestPractice < MiniTest::Unit::TestCase
  def test_that_it_has_a_version_number
    refute_nil ::MiniTestPractice::VERSION
  end

  def setup 
    @my_class = ::MiniTestPractice::MyClass.new
  end

  def teardown 
    @my_class = nil
  end

  def test_odd?
    assert_equal true, @my_class.odd?(1)
    assert_equal false, @my_class.odd?(2)
  end


  def test_check_number?
    assert_equal true, @my_class.check_number?(1000)
    assert_equal false, @my_class.check_number?(9999)
    assert_equal false, @my_class.check_number?(999)
    assert_equal false, @my_class.check_number?(10000)
  end

  def test_enough_length?
    assert_equal true, @my_class.enough_length?("rin")
    assert_equal true, @my_class.enough_length?("12345678")
    assert_equal false, @my_class.enough_length?("123456789")
    assert_equal false, @my_class.enough_length?("  ")
  end

  def test_divide
    assert_equal 3, @my_class.divide(9 , 3)
    assert_raises ZeroDivisionError do
        @my_class.divide(1, 0) 
    end
  end
 
  def test_fizz_buzz
    assert_equal "FizzBuzz", @my_class.fizz_buzz(15)
    assert_equal "Fizz", @my_class.fizz_buzz(3)
    assert_equal "Buzz", @my_class.fizz_buzz(5)
    assert_equal nil, @my_class.fizz_buzz(2)
  end 
end
