defmodule Games do
 
  def guess(secret_number, low..high) do
    guess(secret_number,low..high, determine_guess_number(low..high))
  end


  def guess(secret_number, low..high, guess_number) when guess_number < secret_number do
    IO.puts("Is it #{guess_number}")
    guess(secret_number,guess_number..high, determine_guess_number(guess_number..high))
  end


  def guess(secret_number, low..high, guess_number) when guess_number > secret_number do
    IO.puts("Is it #{guess_number}")
    guess(secret_number,low..guess_number, determine_guess_number(low..guess_number))
  end
  
  def guess(secret_number, low..high, guess_number) when guess_number == secret_number do
    IO.puts("Is it #{guess_number}")
    secret_number
  end

  def determine_guess_number(low..high), do:  div(high - low, 2) + low
end
