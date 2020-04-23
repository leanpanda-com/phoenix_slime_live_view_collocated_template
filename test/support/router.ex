defmodule PhoenixSlime.LiveView.CollocatedTemplateTest.Endpoint.Router do
  use Phoenix.Router

  pipeline :browser do
    plug :accepts, ["html"]
  end

  scope "/", Phoenix.LiveViewTest do
    pipe_through [:browser]
  end
end
