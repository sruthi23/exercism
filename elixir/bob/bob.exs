defmodule Bob do
  def hey(input) do
    cond do
    questions?(input)-> "Sure."
     silence?(input)-> "Fine. Be that way!"
     yelling?(input)-> "Calm down, I know what I'm doing!"
    String.match?(input, ~r/\d$/)->"Whatever."
     shouting?(input)-> "Whoa, chill out!"
     true -> "Whatever."
    end
    end

    defp questions?(input) do
      (input != String.upcase(input) && String.ends_with?(input,"?"))||
      (String.ends_with?(input,"?") && String.match?(input, ~r/[0-9]/) )
    end
    defp silence?(input) do
      String.trim(input) == ""
    end
    defp shouting?(input) do
    input == String.upcase(input)
    end
    defp yelling?(input) do
            input == String.upcase(input) && String.ends_with?(input,"?")
    end
end
