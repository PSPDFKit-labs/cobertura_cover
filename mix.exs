defmodule CoberturaCover.Mixfile do
  use Mix.Project

  def project do
    [app: :cobertura_cover,
     version: "0.9.0",
     elixir: "~> 1.0",
     deps: deps]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
    ]
  end
end
