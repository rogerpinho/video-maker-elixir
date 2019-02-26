defmodule VideoMakerElixir.CLI do

  def main(_args) do
    say_hello()
  end

  defp say_hello() do
    IO.puts("Hello, world!")
  end
end
