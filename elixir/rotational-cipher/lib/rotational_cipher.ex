defmodule RotationalCipher do

  @upper ?A..?Z
  @lower ?a..?z

  @doc """
  Given a plaintext and amount to shift by, return a rotated string.

  Example:
  iex> RotationalCipher.rotate("Attack at dawn", 13)
  "Nggnpx ng qnja"
  """
  @spec rotate(text :: String.t(), shift :: integer) :: String.t()
  def rotate(text, shift) do
       text
       |> to_charlist
       |> Enum.map(fn(x)->
       cond do
        x in @upper -> rem(x-?A+shift,26)+?A
        x in @lower ->rem(x-?a+shift,26)+?a
        true ->x
        end
         end)
       |> to_string

  end
end
