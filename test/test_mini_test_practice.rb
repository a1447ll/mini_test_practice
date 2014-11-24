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
  
end
