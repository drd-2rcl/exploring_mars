defmodule Tools.RotationsTest do
  use ExUnit.Case
  alias Tools.Rotations

  describe "rotate_left/2" do
    test "when receive position and cardinal direction returns the rotation" do
      posicao = "12"
      compass = "N"

      result = Rotations.rotate_left(posicao, compass)

      assert result == "12W"
    end
  end
end
