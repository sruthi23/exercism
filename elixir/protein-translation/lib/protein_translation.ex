defmodule ProteinTranslation do


  @doc """
  Given an RNA string, return a list of proteins specified by codons, in order.
  """
  @spec of_rna(String.t()) :: {atom, list(String.t())}
  def of_rna(rna) do
      (for <<x::binary-3 <- rna>>, do: x )|>
        Enum.each(fn x -> of_codon(x) end)
  end

  @doc """
  Given a codon, return the corresponding protein

  UGU -> Cysteine
  UGC -> Cysteine
  UUA -> Leucine
  UUG -> Leucine
  AUG -> Methionine
  UUU -> Phenylalanine
  UUC -> Phenylalanine
  UCU -> Serine
  UCC -> Serine
  UCA -> Serine
  UCG -> Serine
  UGG -> Tryptophan
  UAU -> Tyrosine
  UAC -> Tyrosine
  UAA -> STOP
  UAG -> STOP
  UGA -> STOP
  """
  @spec of_codon(String.t()) :: {atom, String.t()}
  def of_codon(codon) do
  map = %{
      "UGU" => "Cysteine",
      "UGC" => "Cysteine",
      "UUA" => "Leucine",
      "UUG"=>"Leucine",
      "AUG" => "Methionine",
      "UUU"=>"Phenylalanine",
      "UUC"=>"Phenylalanine",
      "UCU"=>"Serine",
      "UCC"=>"Serine",
      "UCA"=>"Serine",
      "UCG"=>"Serine",
      "UGG"=>"Tryptophan",
      "UAU"=>"Tyrosine",
      "UAC"=>"Tyrosine",
      "UAA"=>"STOP",
      "UAG"=>"STOP",
      "UGA"=>"STOP" }
  case Map.fetch(map,codon) do
    :error -> {:error, "invalid codon"} -> {:error, "invalid RNA"}
    res -> res
  end
  end
end
