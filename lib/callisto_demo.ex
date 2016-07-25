defmodule CallistoDemo do
  use Application

  defmodule Graph do
    use Callisto.GraphDB, otp_app: :callisto_demo
  end

  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      supervisor(CallistoDemo.Graph, [])
    ]

    opts = [strategy: :one_for_one, name: __MODULE__]
    Supervisor.start_link(children, opts)
  end
end
