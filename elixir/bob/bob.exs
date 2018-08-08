defmodule Bob do
  def hey(input) do
    cond do
    String.ends_with?(input,[".","!"]) and String.upcase(input) != input or
     (String.contains?(input,"?") and String.contains?(input,"."))->
     "Whatever."
     String.upcase(input) == input and String.ends_with?(input,"!")->
     "Whoa, chill out!"
     String.ends_with?(input, "?") and String.upcase(input) != input-> "Sure."
String.upcase(input) == input and String.ends_with?(input,"?")-> "Calm down, I know what I'm doing!"
true -> "Fine. Be that way!"
    end
  end
end
