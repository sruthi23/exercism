defmodule RNATranscription do
@rna_map %{?G => ?C,
    ?C => ?G,
    ?T => ?A,
    ?A => ?U}

  def to_rna(dna) do
    dna |>Enum.map(&get_rna/1)
  end

  defp get_rna(nucleotide) do
  @rna_map[nucleotide]
  end

end
