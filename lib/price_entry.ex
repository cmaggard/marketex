defmodule Marketex.PriceEntry do
  def new, do: :queue.new()

  def count(entry) do
    :queue.len entry
  end

  def add(entry, item) do
    :queue.in item, entry
  end

  def front_quantity(entry) do
    case :queue.peek(entry) do
      :empty -> 0
      {:value, {_orderer, qty}} -> qty
    end
  end
end
