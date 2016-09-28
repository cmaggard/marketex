defmodule Marketex.Broker do
  use ExActor.GenServer

  defstart start_link, do: initial_state(nil)

  defcast place_order(:buy, owner, quantity, price) do
    new_state(nil)
  end

  defcast place_order(:sell, owner, quantity, price) do
    new_state(nil)
  end
end
