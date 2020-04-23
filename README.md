# PhoenixSlime.LiveView.CollocatedTemplate

Collocate of Slime live templates with live views

# Authorship

This module is based on code copied from [phoenix_live_view].

[phoenix_live_view]: https://github.com/phoenixframework/phoenix_live_view

# Motivation

Phoenix live views and templates in EEx format can be collocated.
The EEx template *must* have the `.leex` extension for this to work.

This library implements the same behaviour via a macro:

```elixir
use PhoenixSlime.LiveView.CollocatedTemplate
```

Slime live templates, by default have the extension `.slimleex`.

If you want to specify a different extension, e.g. `.slive`,
for your collocated templates, invoke the macro as follows:

```elixir
use PhoenixSlime.LiveView.CollocatedTemplate, extension: :slive
```

# Installation

The package can be installed by adding
`phoenix_slime_live_view_collocated_template` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:phoenix_slime_live_view_collocated_template, "~> 0.1.0"}
  ]
end
```

# Documentation

Documentation is [documentation][here].

[documentation]: https://hexdocs.pm/phoenix_slime_live_view_collocated_template

# License

MIT license. Please see [LICENSE][license] for details.

[LICENSE]: https://github.com/leanpanda-com/phoenix_slime_live_view_collocated_template/blob/master/LICENSE
