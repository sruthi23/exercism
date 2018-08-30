defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    words = String.replace(sentence,~r/[!:,&@$%^&_]/," ")
    words = String.downcase(words)
     words = String.split(words)
     words|> Enum.reduce(%{}, fn x, acc -> Map.update(acc, x, 1, &(&1 +1)) end)
  end
end
