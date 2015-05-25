defmodule ListRecursion do
  import Keyword
  
  
  
  def span(from,to) when from >= to + 1 do
    []
  end

  def span(from,to) when from < to + 1 do
    [from | span(from + 1, to)]
  end  
  


  def primes(from,to) when from < 2 do
    primes(2, to)
  end

  def primes(from,to) when from >= to + 1 do
    []
  end

  def primes(from, to) do
    for value <- span(from,to), is_a_prime(value), do: value      
  end

  defp is_a_prime(a_number) when 2 == a_number do
    true
  end
  
  defp is_a_prime(a_number) do
    is_a_prime(2,a_number)
  end

  defp is_a_prime(dividing_number, a_number) when dividing_number == a_number do
    true
  end

  defp is_a_prime(dividing_number, a_number) when rem(a_number,dividing_number) == 0  do
    false
  end

  defp is_a_prime(dividing_number, a_number) do
    is_a_prime(dividing_number + 1, a_number)
  end
  
  
  def handle_orders(orders, tax_info) do
    for order <- orders, do: update_order(order, tax_info)
  end

  def update_order(order, tax_info) do
    total_amount = (Keyword.get(tax_info,order[:ship_to],0) * order[:net_amount]) + order[:net_amount]
    Keyword.put(order, :total_amount, total_amount)
  end


end

