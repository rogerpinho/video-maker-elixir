defmodule VideoMakerElixir.CLI do

  def main(_args) do
    searchTerm = askAndReturnSearchTerm()
    prefix = askAndReturnPrefix()
  end

  def askAndReturnSearchTerm() do
    ExPrompt.get("Type a Wikipedia search term: ")
  end

  def askAndReturnPrefix() do
    prefixes = ["Who is", "What is", "The history of"]
    selectedPrefixIndex = ExPrompt.choose("Choose your option!", prefixes)    
    
    selectedPrefixText = Enum.at(prefixes, selectedPrefixIndex)
  end

end
