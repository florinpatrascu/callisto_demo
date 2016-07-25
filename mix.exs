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

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      # {:callisto, path: "../callisto_florin"},
      {:callisto, github: "florinpatrascu/callisto", branch: "tinkering_at_adapters"},
      # {:neo4j_sips, path: "../neo4j_sips"}
      {:neo4j_sips, github: "florinpatrascu/neo4j_sips", branch: "act_as_adapter"}
    ]
  end
end
