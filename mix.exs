defmodule PhoenixSlime.LiveView.CollocatedTemplate.MixProject do
  use Mix.Project

  def project do
    [
      app: :phoenix_slime_live_view_collocated_template,
      version: "0.1.0",
      elixir: "~> 1.10",
      description: "Collocate of Slime live templates with live views",
      package: package(),
      start_permanent: Mix.env() == :prod,
      elixirc_paths: elixirc_paths(Mix.env()),
      deps: deps()
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:floki, ">= 0.0.0", only: :test},
      {:jason, "~> 1.0", only: :test},
      {:phoenix_live_view, ">= 0.12.0", only: :test},
      {:phoenix_slime, ">= 0.13.0"}
    ]
  end

  defp package do
    %{
      licenses: ["MIT"],
      links: %{
        "GitHub" =>
        "https://github.com/leanpanda-com/phoenix_slime_live_view_collocated_template"
      },
      maintainers: ["Joe Yates"]
    }
  end
end
