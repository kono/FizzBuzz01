require 'rubygems'
require 'test/unit'
require 'Customer'
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
    @obj = Customer.new
  end
  
  def test1
    @obj.statement
  end
end
