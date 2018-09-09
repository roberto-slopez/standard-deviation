defmodule Math.MixProject do
  use Mix.Project

  def project do
    [
      app: :math,
      escript: [main_module: Math],
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:poison, "~> 4.0.1"},
      {:distillery, "~> 2.0"}
    ]
  end
end