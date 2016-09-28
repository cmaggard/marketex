defmodule Marketex.Book do
  use ExActor.GenServer

  defstart start_link, do: initial_state(%{})

  defcall receive_order(orderer, quantity, price) do
    add_order(self, orderer, quantity, price)
  end

  defcall add_order(orderer, quantity, price), state: state do
    new_order = {orderer, quantity}
    orders = state |> Map.get(price, [])

    state
    |> Map.put(price, [ new_order | orders ])
    |> set_and_reply(:ok)
  end

  defcall get, state: state, do: reply(state)
end
