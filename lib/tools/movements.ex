defmodule Tools.Movements do
  def move(<<x_position::binary-size(1), y_position::binary-size(1), compass::binary-size(1)>>, "N"), do: x_position <> inc(y_position) <> compass
  def move(<<x_position::binary-size(1), y_position::binary-size(1), compass::binary-size(1)>>, "E"), do: inc(x_position) <> y_position <> compass
  def move(<<x_position::binary-size(1), y_position::binary-size(1), compass::binary-size(1)>>, "W"), do: dec(x_position) <> y_position <> compass
  def move(<<x_position::binary-size(1), y_position::binary-size(1), compass::binary-size(1)>>, "S"), do: x_position <> dec(y_position) <> compass

  defp inc(number) do
    number
    |> convert_integer()
    |> inc_number()
  end

  defp inc_number(number) do
    number + 1
    |> convert_string()
  end

  defp dec(number) do
    number
    |> convert_integer()
    |> dec_number()
  end

  defp dec_number(number) do
    number - 1
    |> convert_string()
  end

  defp convert_integer(number), do: String.to_integer(number)
  defp convert_string(number), do: Integer.to_string(number)
end
