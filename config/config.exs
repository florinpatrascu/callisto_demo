# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :callisto_demo, CallistoDemo.Graph,
  adapter: Callisto.Adapters.Neo4j,
  url: "http://localhost:7474",
  pool_size: 5,
  max_overflow: 2,
  timeout: 30

if Mix.env == :test, do: import_config "test.exs"
