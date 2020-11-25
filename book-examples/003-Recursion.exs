# defmodule Countdown do

#   def final_countdown(from) when from > 0 do
#     IO.inspect(from)
#     final_countdown(from - 1)
#   end

#   def final_countdown(from) when from <= 0 do
#     IO.inspect(from) 
#     IO.puts("TANANA TANANANA")
#   end

# end

# defmodule Fact_1 do 
#   def factorial(n) when n <= 1 do
#     1
#   end
#   def factorial(n) when n > 1 do 
#     n * factorial(n-1)
#   end
# end

defmodule Fact_2 do 
  def factorial(n) do
    cond do
      n <= 1 -> 1
      n > 1 -> n * factorial(n-1)
    end
  end
end

Fact_2.factorial(40000) |> IO.inspect
# Fact_2.factorial(2) |> IO.inspect
# Fact_2.factorial(3) |> IO.inspect
# Fact_2.factorial(4) |> IO.inspect

# defmodule Acc do

#   def count(x) when x > 0 do
#     x + count(x - 1) 
#   end
#   def count(x) when x == 0 do
#     0
#   end 
# end

# defmodule Acc_2 do
#   def count(x) do
#     cond do 
#       x > 0   -> x + count(x - 1)
#       x == 0  -> 0
#     end
#   end
# end


# Acc_3.count(5) |> IO.inspect