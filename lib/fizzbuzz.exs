defmodule FizzBuzz do
  
  whichFizzBuzz = fn 
    (0, 0, _) -> "FizzBuzz"
    (0, _, _) -> "Fizz"
    (_, 0, _) -> "Buzz"
    (_, _, n) -> n
  end
 
  fizzbuzz = fn (n) -> whichFizzBuzz.(rem(n,5), rem(n,3), n) end

  
IO.inspect Enum.map(1..100, fizzbuzz)

end
