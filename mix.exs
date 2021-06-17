defmodule ExPoleDancer.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_pole_dancer,
      version: "0.1.0",
      elixir: "~> 1.10",
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
      {:algae, "~> 1.2"},
      {:exceptional, "~> 2.1"},
      {:ok, "~> 2.3.0"},
    ]
  end
end
