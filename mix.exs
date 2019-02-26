defmodule VideoMakerElixir.MixProject do
  use Mix.Project

  def project do
    [
      app: :video_maker_elixir,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      escript: escript()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp escript do
    [main_module: VideoMakerElixir.CLI]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_prompt, "~> 0.1.4"}
    ]
  end
end
