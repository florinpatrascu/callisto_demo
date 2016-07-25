defmodule CallistoDemo.Mixfile do
  use Mix.Project

  def project do
    [app: :callisto_demo,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :neo4j_sips, :callisto],
     mod: {CallistoDemo, []}]
  end

  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:callisto, github: "collabrx/callisto"},
      {:neo4j_sips, "~> 0.2.10"}
    ]
  end
end
