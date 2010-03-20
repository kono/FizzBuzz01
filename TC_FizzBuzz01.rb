require 'test/unit'
require 'fizzbuzz01'

$KCODE="SJIS"
class TC_FizzBuzz01 < Test::Unit::TestCase

  def setup
    @obj = FizzBuzz01.new
  end
  
  def test_is_fizzbuzz
    assert(@obj.is_fizzbuzz(1)=="1","1の時に1とprintされませんでした。")
    assert(@obj.is_fizzbuzz(3)=="Fizz","3の時にFizzとprintされませんでした。")
    assert(@obj.is_fizzbuzz(5)=="Buzz","5の時にBuzzとprintされませんでした。")
    assert(@obj.is_fizzbuzz(15)=="FizzBuzz","15の時にFizzBuzzとprintされませんでした。")
  end
end
