defmodule SecretHandshake do
use Bitwise, only_operators: true

  @spec commands(code :: integer) :: list(String.t())
  def commands(code) do
  map = %{1=>"wink", 2=>"double blink", 4=>"close your eyes", 8=>"jump"}

  reverse? = (code &&& 16) != 0
   Enum.reduce(map, [], fn {map, action}, acc ->
     case code &&& map do
       0 ->
         acc
       _ when reverse? ->
         [action | acc]
       _ ->
         acc ++ [action]
     end
   end)
  end
end
