defmodule Marketex.PriceEntry do
  @type order_placer :: atom
  @type quantity :: integer

  @type order :: {order_placer, quantity}
  @type price_entry :: :queue.queue(order)

  @spec new :: price_entry
  def new, do: :queue.new()

  @spec count(price_entry) :: integer
  def count(entry) do
    :queue.len entry
  end

  @spec add(price_entry, order) :: price_entry
  def add(entry, order) do
    :queue.in order, entry
  end

  @spec front_quantity(price_entry) :: integer
  def front_quantity(entry) do
    case :queue.peek(entry) do
      :empty -> 0
      {:value, {_orderer, qty}} -> qty
    end
  end
end
