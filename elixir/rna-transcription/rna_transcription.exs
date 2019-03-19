defmodule RNATranscription do
@rna_map %{71 => 67, 67 => 71,84 => 65, 65 => 85}

  def to_rna(dna) do
    dna |>Enum.map(&get_rna/1)
  end

  defp get_rna(nucleotide) do
  @rna_map[nucleotide]
  end

end
