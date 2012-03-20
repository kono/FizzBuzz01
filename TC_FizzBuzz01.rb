require 'rubygems'
require 'test/unit'
require 'FizzBuzz01'
require 'kconv'

$KCODE="UTF8"
class TC_FizzBuzz01 < Test::Unit::TestCase

  def assert(status,msg)
    if(RUBY_PLATFORM.downcase =~ /mswin(?!ce)|mingw|cygwin|bccwin/)
      msg=Kconv.tosjis(msg)
    end
    super(status,msg)
  end

  def setup
    @obj = FizzBuzz01.new
  end
  
  def test_is_fizzbuzz
    assert(@obj.is_fizzbuzz(1)=="1","1の時に1とprintされませんでした。")
    assert(@obj.is_fizzbuzz(2)=="2","2の時に2とprintされませんでした。")
    assert(@obj.is_fizzbuzz(3)=="Fizz","3の時にFizzとprintされませんでした。")
    assert(@obj.is_fizzbuzz(5)=="Buzz","5の時にBuzzとprintされませんでした。")
    assert(@obj.is_fizzbuzz(15)=="FizzBuzz","15の時にFizzBuzzとprintされませんでした。")
  end
end
