defmodule Tools.Executions do
  alias Tools.{Movements, Rotations}

  def exec([x, y], []), do: :ok
  def exec([x, y], [rover_commands | new_rover]) do
     IO.inspect(exec_for(rover_commands, [x, y]))
     exec([x, y], new_rover)
  end

  defp exec_for([initial_position, commands], [x, y]), do: start_new_position(initial_position, commands)

  defp start_new_position(current_position, ""), do: current_position

  defp start_new_position(current_position, <<one_command::binary-size(1), new_rover::binary>>) do
    current_position
    |> new_position(one_command)
    |> start_new_position(new_rover)
  end

  defp new_position(<<position::binary-size(2), compass::binary-size(1)>>, "L"), do: Rotations.rotate_left(position, compass)
  defp new_position(<<position::binary-size(2), compass::binary-size(1)>>, "R"), do: Rotations.rotate_right(position, compass)
  defp new_position(<<position::binary-size(2), compass::binary-size(1)>> = current_position, "M"), do: Movements.move(current_position, compass)
end
