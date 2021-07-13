defmodule Tools.PosDir do
  def get_x do
    IO.gets("Qual o valor de X na sua área? > ")
    |> format_value()
  end

  def get_y do
    IO.gets("Qual o valor de Y na sua área? ")
    |> format_value()
  end

  def get_position do
    IO.gets("Defina a posição inicial da sonda (ex. 12N): ")
    |> String.trim()
    |> validate_lenght()
    |> format_position_and_commands()
  end

  def get_commands do
    IO.gets("Defina as instruções da sonda. M para movimentar e L/R para rotacionar (ex. LMLMLMLMM): ")
    |> format_position_and_commands()
  end

  def format_value(value) do
    value
    |> String.trim()
    |> validate_number()
  end

  def validate_number(value) do
    try do
      String.to_integer(value)
    rescue
      ArgumentError ->
        {:error, "O valor precisa ser um inteiro."}
    end
  end

  def validate_lenght(value) do
    case String.length(value) == 3 do
      true -> value
      false -> {:error, "As coordernadas são restritas a 3 caracteres"}
    end
  end

  def format_position_and_commands(value) do
    value
    |> String.upcase()
    |> String.trim()
  end
end
