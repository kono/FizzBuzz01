require 'test/unit'
require 'fizzbuzz01'

$KCODE="SJIS"
class TC_FizzBuzz01 < Test::Unit::TestCase

  def setup
    @obj = FizzBuzz01.new
  end
  
  def test_is_fizzbuzz
    assert(@obj.is_fizzbuzz(1)=="1","1�̎���1��print����܂���ł����B")
    assert(@obj.is_fizzbuzz(3)=="Fizz","3�̎���Fizz��print����܂���ł����B")
    assert(@obj.is_fizzbuzz(5)=="Buzz","5�̎���Buzz��print����܂���ł����B")
    assert(@obj.is_fizzbuzz(15)=="FizzBuzz","15�̎���FizzBuzz��print����܂���ł����B")
  end
end
