defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    sentence
     |> String.replace(~r/[!:,&@$%^&_]/," ")
     |> String.downcase()
     |> String.split()
     |>Enum.reduce(%{},&wordCount/2)
     #|>Enum.reduce(%{},&(Map.update(&2,&1,1,fn(x)->x+1 end)))
  end

  def wordCount(x, acc)do
    Map.update(acc,x,1, &(&1 +1))
  end

end
