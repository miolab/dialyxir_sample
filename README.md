# Dialyxir Sample
【kokura.ex】「ElixirドキュメントやTypespecsを書いてみよう！」勉強会用

# Setup
1. `mix new . --app my_app`
1. mix.exs (inner `defp deps do` block)  
  `{:dialyxir, "~> 1.1", only: [:dev], runtime: false}`  <-- add
1. `mix deps.get`
1. `mix deps.compile`
1. `mix dyalizer`  
  初回は数分ほどかかる

# Execute
## Implementation
```elixir
iex -S mix
```

- e.g.
```elixir
iex> Examples.sum_times(2, %Examples{first: 0, last: 10})
77

iex> Person.current_age(10)
2011

iex> LousyCalculator.add(1, 2)
{3, "You need a calculator to do that?"}

iex> recompile
Compiling 1 file (.ex)
:ok
```

## verification
```elixir
mix dyalizer
```

---

[WIP]
## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `my_app` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:my_app, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/my_app](https://hexdocs.pm/my_app).

