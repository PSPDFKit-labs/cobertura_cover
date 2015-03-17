defmodule CoberturaCover.Mixfile do
  use Mix.Project

  def project do
    [
      app: :cobertura_cover,
      version: "0.9.0",
      elixir: "~> 1.0",
      deps: [],
      source_url: "https://github.com/PSPDFKit-labs/cobertura_cover",
      description: description,
      package: package,
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp description do
    """
    A plugin for `mix test --cover` that writes a `coverage.xml` file compatible with Jenkins'
    Cobertura plugin.
    """
  end

  defp package do
    [contributors: ["Martin Schurrer"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/PSPDFKit-labs/cobertura_cover"},
     files: ["lib", "mix.exs", "README.md"]]
  end
end
