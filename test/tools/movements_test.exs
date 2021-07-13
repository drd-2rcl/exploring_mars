defmodule Tools.MovementsTest do
  use ExUnit.Case

  import ExUnit.CaptureIO

  alias Tools.Executions

  describe "exec/2" do
    test "when the function receive values to move" do
      x = 5
      y = 5
      rover_position = "12N"
      rover_commands = "LMLMLMLMM"
      rover_position_2 = "33E"
      rover_commands_2 = "MMRMMRMRRM"

      result = capture_io(fn -> Executions.exec([x, y], [[rover_position, rover_commands], [rover_position_2, rover_commands_2]]) end)

      assert result = "51E"
    end
  end
end
