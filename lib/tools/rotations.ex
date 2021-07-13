defmodule Tools.Rotations do
  def rotate_left(position, "N"), do: position <> "W"
  def rotate_left(position, "E"), do: position <> "N"
  def rotate_left(position, "W"), do: position <> "S"
  def rotate_left(position, "S"), do: position <> "E"
  def rotate_right(position, "N"), do: position <> "E"
  def rotate_right(position, "E"), do: position <> "S"
  def rotate_right(position, "W"), do: position <> "N"
  def rotate_right(position, "S"), do: position <> "W"
end
