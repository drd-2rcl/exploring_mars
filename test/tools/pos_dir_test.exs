defmodule Tools.PosDirTest do
  use ExUnit.Case

  import ExUnit.CaptureIO

  alias Tools.PosDir

  describe "get_x/0" do
    test "when get the value returns X value formated" do
      result =
        capture_io(fn -> IO.puts("5") end)
        |> PosDir.format_value()

      assert result == 5
    end

    test "when get the value, but is not a number" do
      result =
        capture_io(fn -> IO.puts("abc") end)
        |> PosDir.format_value()

      assert result == {:error, "O valor precisa ser um inteiro."}
    end
  end

  describe "get_y/0" do
    test "when get the value returns Y value formated" do
      result =
        capture_io(fn -> IO.puts("5") end)
        |> PosDir.format_value()

      assert result == 5
    end

    test "when get the value, but is not a number" do
      result =
        capture_io(fn -> IO.puts("abc") end)
        |> PosDir.format_value()

      assert result == {:error, "O valor precisa ser um inteiro."}
    end
  end

  describe "get_position/0" do
    test "when get the position returns correct values formated" do
      result =
        capture_io(fn -> IO.puts("12N") end)
        |> String.trim()
        |> PosDir.validate_lenght()

      assert result == "12N"
    end

    test "when get incorrect position returns the error" do
      result =
        capture_io(fn -> IO.puts("12NW") end)
        |> PosDir.validate_lenght()

      assert result == {:error, "As coordernadas são restritas a 3 caracteres"}
    end
  end

  describe "get_commands/0" do
    test "when get the commands returns correct values formated" do
      result =
        capture_io(fn -> IO.puts("LMLMLMLMM") end)
        |> PosDir.format_position_and_commands()

      assert result == "LMLMLMLMM"
    end
  end
end
