defmodule CallistoDemoTest do
  use ExUnit.Case
  doctest CallistoDemo

  alias CallistoDemo.Graph, as: Repo

  test "it get some data from the server" do
    {:ok, row} = Repo.query("CREATE (you:Person {name:'You'}) RETURN you", fn(r) -> hd(r)["you"] end)
    assert row["name"] == "You"

    row = Repo.query!("MATCH (you:Person {name:'You'}) RETURN you") |> List.first
    assert row["you"]["name"] == "You"

    row = Repo.query!("MATCH (you:Person {name: 'You'}) DELETE you")
    assert row == []
  end
end
