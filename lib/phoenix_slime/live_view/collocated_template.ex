defmodule PhoenixSlime.LiveView.CollocatedTemplate do
  defmacro __using__(opts) do
    quote bind_quoted: [opts: opts] do
      require PhoenixSlime.LiveView.CollocatedTemplate.Compiler
      @compile {:extension, Keyword.get(opts, :extension, :slimleex)}
      @before_compile PhoenixSlime.LiveView.CollocatedTemplate.Compiler
    end
  end
end
