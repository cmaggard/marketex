# Marketex

A market order book system in Elixir

## Goals

* Buy/sell order placing on any arbitrary term
* Matchmaking on order placement
* Some sort of hook on order fulfillment


## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `marketex` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:marketex, "~> 0.1.0"}]
    end
    ```

  2. Ensure `marketex` is started before your application:

    ```elixir
    def application do
      [applications: [:marketex]]
    end
    ```

