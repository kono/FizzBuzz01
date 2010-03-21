require 'test/unit'
require 'FizzBuzz01'
require 'kconv'

$KCODE="SJIS"
class TC_FizzBuzz01 < Test::Unit::TestCase

  def setup
    @obj = FizzBuzz01.new
  end
  
  def test_is_fizzbuzz
    assert(@obj.is_fizzbuzz(1)=="1",Kconv.tosjis("1の時に1とprintされませんでした。"))
    assert(@obj.is_fizzbuzz(2)=="2",Kconv.tosjis("2の時に2とprintされませんでした。"))
    assert(@obj.is_fizzbuzz(3)=="Fizz",Kconv.tosjis("3の時にFizzとprintされませんでした。"))
    assert(@obj.is_fizzbuzz(5)=="Buzz",Kconv.tosjis("5の時にBuzzとprintされませんでした。"))
    assert(@obj.is_fizzbuzz(15)=="FizzBuzz",Kconv.tosjis("15の時にFizzBuzzとprintされませんでした。"))
  end
end
