defmodule PhoenixSlime.LiveView.CollocatedTemplateTest do
  use ExUnit.Case, async: true
  import Phoenix.ConnTest
  import Phoenix.LiveViewTest

  alias PhoenixSlime.LiveView.CollocatedTemplateTest.{
    CollocatedFooTemplate,
    CollocatedSlimleexTemplate,
    Endpoint
  }

  @endpoint Endpoint

  test "supports collocated .slimleex templates" do
    {:ok, _view, html} = live_isolated(build_conn(), CollocatedSlimleexTemplate)
    assert html =~ "Hello world from a slim template!"
  end

  test "supports collocated templates with custom extensions" do
    {:ok, _view, html} = live_isolated(build_conn(), CollocatedFooTemplate)
    assert html =~ "Hello world from a slim template with extension .foo!"
  end
end
