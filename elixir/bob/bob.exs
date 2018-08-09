defmodule Bob do
  def hey(input) do
    cond do
    String.ends_with?(input,[".","!"]) and String.upcase(input) != input ->
     "Whatever."
     String.trim(input) == "" -> "Fine. Be that way!"
     String.ends_with?(input,"!") or String.upcase(input) == input -> "Whoa, chill out!"
     String.match?(input, ~r/\d\?/)->"hhhh"
    end
  end
end
