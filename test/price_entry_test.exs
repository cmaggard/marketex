defmodule Marketex.PriceEntryTest do
  use ExUnit.Case
  alias Marketex.PriceEntry

  @order {:gecko, 1000}

  setup do
    pe = PriceEntry.new
    {:ok, [price_entry: pe]}
  end

  test "A price entry should start empty", context do
    assert context[:price_entry] |> PriceEntry.count == 0
  end

  test "A price entry with an empty queue should return a front quantity of 0", context do
    assert context[:price_entry] |> PriceEntry.front_quantity == 0
  end

  test "A price entry should allow adding an order", context do
    assert context[:price_entry] |> add_order |> PriceEntry.count == 1
  end

  test "A price entry should show the front quantity", context do
    assert context[:price_entry] |> add_order |> PriceEntry.front_quantity == 1000
  end

  def add_order(price_entry) do
    price_entry |> PriceEntry.add(@order)
  end
end
