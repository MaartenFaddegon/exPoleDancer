defmodule AlgaesMaybeMonad do
  alias Algae.Maybe
  use Witchcraft

  def land_left(n, {left, right}) do
    if abs(left + n - right) < 4 do
      Maybe.new({left + n, right})
    else
      Maybe.new()
    end
  end

  def land_right(n, {left, right}) do
    if abs(left - (right + n)) < 4 do
      Maybe.new({left, right + n})
    else
      Maybe.new()
    end
  end

  def example1 do
    Maybe.new({0, 0})
    >>> fn x -> land_right(2, x) end
    >>> fn x -> land_left(2, x) end
    >>> fn x -> land_right(2, x) end
  end
  # => %Maybe.Just{just: {2, 4}}

  def example2 do
    Maybe.new({0, 0})
    >>> fn x -> land_left(1, x) end
    >>> fn x -> land_right(4, x) end
    >>> fn x -> land_left(-1, x) end
    >>> fn x -> land_right(-2, x) end
  end
  # => %Maybe.Nothing{}

end
