defmodule ExploringMarsTest do
  use ExUnit.Case

  import ExUnit.CaptureIO

  alias Tools.Executions

  describe "exec/2" do
    test "when execute all modules" do
      x = 5
      y = 5
      rover_position = "34E"
      rover_commands = "MMLRMLLMMR"
      rover_position_2 = "34E"
      rover_commands_2 = "MMLRMLLMMR"

      result = capture_io(fn -> Executions.exec([x, y], [[rover_position, rover_commands], [rover_position_2, rover_commands_2]]) end)

      assert result = "44N"
    end
  end
end
