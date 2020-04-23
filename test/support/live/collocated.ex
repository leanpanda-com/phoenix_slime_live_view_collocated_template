defmodule PhoenixSlime.LiveView.CollocatedTemplateTest.CollocatedSlimleexTemplate do
  use PhoenixSlime.LiveView.CollocatedTemplate
  use Phoenix.LiveView

  def mount(_params, _session, socket) do
    {:ok, assign(socket, world: "world")}
  end
end

defmodule PhoenixSlime.LiveView.CollocatedTemplateTest.CollocatedFooTemplate do
  use PhoenixSlime.LiveView.CollocatedTemplate, extension: :foo
  use Phoenix.LiveView

  def mount(_params, _session, socket) do
    {:ok, assign(socket, world: "world")}
  end
end
