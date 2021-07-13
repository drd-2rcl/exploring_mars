defmodule ExploringMars do
  alias Tools.{PosDir, Executions}

  def call do
    x = PosDir.get_x()
    y = PosDir.get_y()
    rover_position = PosDir.get_position()
    rover_commands = PosDir.get_commands()
    rover_position_2 = PosDir.get_position()
    rover_commands_2 = PosDir.get_commands()

    Executions.exec([x, y], [[rover_position, rover_commands], [rover_position_2, rover_commands_2]])
  end
end
