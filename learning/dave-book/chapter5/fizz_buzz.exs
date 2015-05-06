fizz_buzz = fn
  0, 0, _ ->  "FizzBuzz"
  0, _, _ ->  "Fizz"
  _, 0, _ ->  "Buzz"
  _, _, third_element -> third_element  

end

IO.puts fizz_buzz.(0,0,1)
IO.puts fizz_buzz.(0,1,1)
IO.puts fizz_buzz.(1,0,1)
IO.puts fizz_buzz.(1,1,5)
IO.puts fizz_buzz.(1,1,'Dave')

IO.puts '---------------------------------'

fizz_buzzinator = fn
  n -> fizz_buzz.(rem(n,3),rem(n,5),n)
end

IO.puts fizz_buzzinator.(10)
IO.puts fizz_buzzinator.(11)
IO.puts fizz_buzzinator.(12)
IO.puts fizz_buzzinator.(13)
IO.puts fizz_buzzinator.(14)
IO.puts fizz_buzzinator.(15)
IO.puts fizz_buzzinator.(16)
IO.puts fizz_buzzinator.(17)
IO.puts fizz_buzzinator.(18)
IO.puts fizz_buzzinator.(19)
