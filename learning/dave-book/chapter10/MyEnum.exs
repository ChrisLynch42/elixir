defmodule MyEnum do
	
	def all?([], _function), do: true
	def all?([head | tail ], function) when true do
		if function.(head) do
			all?(tail, function)
		else
		  false
		end
			
	end
	
  def flatten([]), do: []
	def flatten([head | tail]) when is_list(head) do
	   flatten(head) ++ flatten(tail)
	end
	def flatten([head | tail]) do
	   [head | flatten(tail)]
	end
  def flatten(head), do: head	  

	
end


MyEnum.all?([1,2,3,4], &(&1 < 10))