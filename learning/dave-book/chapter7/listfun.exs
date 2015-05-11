defmodule ListFun do

  def square([]), do: []

  def square([head | tail]), do: [head*head | square(tail)]


  def plus_plus([]), do: []
  def plus_plus([head | tail]), do: [head + 1 | plus_plus(tail)]

  def map([], _func), do: []
  def map([head | tail], func), do: [func.(head) | map(tail,func)]

  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)

  def reduce([], start_value, _), do: start_value

  def reduce([head | tail], start_value, func), do: reduce(tail, func.(head,start_value),func)

  #def mapsum([], _func), do: 0

  def mapsum([head | tail], func), do: _mapsum([head | tail], 0, func)

  defp _mapsum([], start_value, _func), do: start_value
  defp _mapsum([head | tail], start_value, func), do: _mapsum(tail,start_value + func.(head),func) 

  def get_max([]), do: 0
  def get_max([],max_value), do: max_value
  def get_max([head]), do: head
  def get_max([head | tail]), do: get_max([head | tail], 0)
  
  def get_max([head | tail], max_value) when head > max_value do
    get_max(tail, head)
  end
  
  def get_max([head | tail], max_value) when head < max_value do
    get_max(tail, max_value)
  end 


  def caesar([],add_value), do: ''

  def caesar([head | tail], add_value) when head + add_value < 123 do
    [head + add_value | caesar(tail, add_value)]
  end

  def caesar([head | tail], add_value) when head + add_value > 122 do
    [64 + head + add_value - 122 | caesar(tail, add_value)]
  end


  def span(from,to) when from >= to + 1 do
    []
  end

  def span(from,to) when from < to + 1 do
    [from | span(from + 1, to)]
  end  
end
