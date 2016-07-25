# Callisto Neo4j.Sips Demo

A simple demo using [Callisto](https://github.com/CollabRx/callisto) and the Neo4j.Sips **adapter**.

*Note: this code is for demo purposes and it is using libraries currently in development, please check the `mix.exs` for details!*

After you setup the app, jump into the IEx and play around with Callisto's Graph or anything that it is available in there :) More to come.


### Configuration

provided you have a local Neo4j server running at `http://localhost:7474`, define the following configuration file (`config/config.exs`)

    config :callisto_demo, CallistoDemo.Graph,
      adapter: Callisto.Adapters.Neo4j,
      url: "http://localhost:7474",
      pool_size: 5,
      max_overflow: 2,
      timeout: 30

This demo is expecting a neo4j server for test running at `http://localhost:7373`, in case you want to run `mix test`, just saying ;)

Excerpt from a debugging session:

    $ iex -S mix
    Erlang/OTP 19 [erts-8.0.2] [source] [64-bit] [smp:4:4] [async-threads:10] [hipe] [kernel-poll:false] [dtrace]

    Interactive Elixir (1.3.2) - press Ctrl+C to exit (type h() ENTER for help)
    iex(1)> alias CallistoDemo.Graph, as: Repo
    CallistoDemo.Graph

    iex(2)> {:ok, row} = Repo.query("CREATE (you:Person {name:'You'}) RETURN you", fn(r) -> hd(r)["you"] end)
    {:ok, %{"name" => "You"}}

    iex(3)> row = Repo.query!("MATCH (you:Person {name:'You'}) RETURN you") |> List.first
    %{"you" => %{"name" => "You"}}

