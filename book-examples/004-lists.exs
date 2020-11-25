defmodule Multplex do

  def product([]) do
    0
  end
  
  def product(list) do
    product(list, 1)
  end

  def product([head | tail], acc_prod) do
    product(tail, head * acc_prod)
  end

  def product([], acc_prod) do
    acc_prod
  end

end

defmodule Sum do

  def add([]) do
    0
  end
  
  def add(list) do
    add(list, 0)
  end

  def add([head | tail], acc_prod) do
    add(tail, head + acc_prod)
  end

  def add([], acc_prod) do
    acc_prod
  end

end


defmodule Minus do

  def sub([]) do
    0
  end
  
  def sub(list) do
    sub(list, 0)
  end

  def sub([head | tail], acc_prod) do
    sub(tail, head - acc_prod)
  end

  def sub([], acc_prod) do
    acc_prod
  end

end
# Multplex.product([1,2,3,4]) |> IO.inspect
# Minus.sub([1, 56]) |> IO.inspect


defmodule DropPatern do
  def fall_velocity({distance, planemo})  when distance > 0 do
    gravity = case planemo do 
      :earth  -> 9.81
      :moon   -> 1.6
      :mars   -> 3.17
    end
    :math.sqrt(2 * gravity * distance)
  end


  def falls_list(list), do: falls_list(list, [])
  def falls_list([], result_set), do: result_set

  def falls_list([head | tail], result_set) do 
    falls_list(tail,  result_set ++ [fall_velocity(head)])
  end
end

DropPatern.falls_list([{ 20, :earth }, { 20, :moon }, { 20, :mars }]) |> IO.inspect