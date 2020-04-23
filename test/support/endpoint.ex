defmodule PhoenixSlime.LiveView.CollocatedTemplateTest.Endpoint do
  def config(:live_view), do: [signing_salt: "0DWJ0h92hKHYsiz3hBFk1OFAk8Cb0vFK"]
  def config(:secret_key_base), do: String.duplicate("VgNCb0vFK", 50)

  def init(opts), do: opts

  def call(conn, _) do
    %{conn | secret_key_base: config(:secret_key_base)}
    |> Plug.Conn.put_private(:phoenix_endpoint, __MODULE__)
    |> PhoenixSlime.LiveView.CollocatedTemplateTest.Endpoint.Router.call([])
  end
end
