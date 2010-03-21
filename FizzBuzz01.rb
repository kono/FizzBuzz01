class FizzBuzz01
  def is_fizzbuzz(n)
    retstr=""
    if n % 3 == 0
      retstr=retstr + "Fizzz"
    end
    if n % 5 == 0
      retstr=retstr + "Buzz"
    end
    if (n % 3 !=0)&& (n % 5 != 0)
      retstr=retstr + n.to_s
    end
    return retstr
  end
end
