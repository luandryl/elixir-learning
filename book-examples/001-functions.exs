defmodule Drop do
  def fall_velocity(distance, :earth) when distance > 0 do
    :math.sqrt(2 * 9.8 * distance)
  end

  def fall_velocity(distance, :moon) when distance > 0 do
    :math.sqrt(2 * 1.6 * distance)
  end

  def fall_velocity(distance, :mars) when distance > 0 do
    :math.sqrt(2 * 3.71 * distance)
  end
end

defmodule Convert do
  def mps_to_kph(mps), do: 3.6 * mps
end



defmodule Run do
  def start do
   IO.gets("The hieght that you fall? \n") 
      |> String.trim_trailing
      |> String.to_integer
      |> Drop.fall_velocity(:earth)
      |> Convert.mps_to_kph
      |> IO.puts 
  end
end

Run.start