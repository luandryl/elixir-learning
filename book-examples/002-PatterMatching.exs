defmodule Drop do

  def fall_velocity({distance, planemo})  when distance > 0 do
    fall_velocity(distance, planemo)
  end

  defp fall_velocity(distance, :earth) when distance > 0 do
    :math.sqrt(2 * 9.8 * distance)
  end

  defp fall_velocity(distance, :moon) when distance > 0 do
    :math.sqrt(2 * 1.6 * distance)
  end

  defp fall_velocity(distance, :mars) when distance > 0 do
    :math.sqrt(2 * 3.71 * distance)
  end
end

defmodule DropPatern do
  def fall_velocity({distance, planemo})  when distance > 0 do
    gravity = case planemo do 
      :earth  -> 9.8
      :moon   -> 1.6
      :mars   -> 3.17
    end
    :math.sqrt(2 * gravity * distance)
  end
end
# https://doc.lagout.org/programmation/Functional%20Programming/Introducing%20Elixir_%20Getting%20Started%20in%20Functional%20Programming%20%5BSt.%20Laurent%20%26%20Eisenberg%202014-09-25%5D.pdf
DropPatern.fall_velocity({20, :earth})  |> IO.puts
DropPatern.fall_velocity({20, :moon})   |> IO.puts
DropPatern.fall_velocity({20, :mars})   |> IO.puts