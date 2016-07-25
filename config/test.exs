use Mix.Config

config :callisto_demo, CallistoDemo.Graph,
  adapter: Callisto.Adapters.Neo4j,
  url: "http://localhost:7373",
  pool_size: 5,
  max_overflow: 2,
  timeout: 30
