ExUnit.start()

# {:ok, _pid} = Neo4j.Sips.start_link(Application.get_env(:callisto_demo, CallistoDemo.Graph))
#

Process.flag(:trap_exit, true)
