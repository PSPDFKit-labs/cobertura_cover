CoberturaCover
==============

A plugin for `mix test --cover` that writes a `coverage.xml` file compatible with Jenkins'
[Cobertura plugin](https://wiki.jenkins-ci.org/display/JENKINS/Cobertura+Plugin).

Inspired by [covertool](https://github.com/idubrov/covertool) for Erlang.

![Jenkins Cobertura Plugin](https://github.com/PSPDFKit-labs/cobertura_cover/raw/master/doc/jenkins%E2%80%93screenshot.png)

## Usage

Put this in your `mix.exs`:

```elixir
def project do
  [
    test_coverage: [tool: CoberturaCover]
  ]
end

defp deps do
  [
    {:cobertura_cover, "~> 0.9.0", only: :test}
  ]
end
```

Now you can run `mix test --cover` to generate a `coverage.xml` in your CI workflow.

If you want to get HTML output too you can configure it like this:

```elixir
def project do
  [
    test_coverage: [tool: CoberturaCover, html_output: "cover"]
  ]
end
```
