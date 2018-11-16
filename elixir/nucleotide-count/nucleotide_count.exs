defmodule NucleotideCount do
  @nucleotides [?A, ?C, ?G, ?T]

  @spec count([char], char) :: non_neg_integer

  def count(strand, nucleotide) do
    Enum.count(strand,  &(&1))
      Enum.count(strand, &(&1== nucleotide))
    end

  @spec histogram([char]) :: map

  def histogram(strand) do
   map = %{?A => 0, ?T => 0, ?C => 0, ?G => 0}
    Enum.reduce(strand, map, &update_histo/2)
  end

  def update_histo(nucleotide, histogram) do
      Map.update(histogram,nucleotide,1, &(&1 +1))
  end

end
