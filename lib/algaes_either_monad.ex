defmodule AlgaesEitherMonad do
  alias Algae.Either
  use Witchcraft

  def land_left(n, {left, right}) do
    if abs(left + n - right) < 4 do
      Either.Right.new({left + n, right})
    else
      Either.Left.new(:lost_balance)
    end
  end

  def land_right(n, {left, right}) do
    if abs(left - (right + n)) < 4 do
      Either.Right.new({left, right + n})
    else
      Either.Left.new(:lost_balance)
    end
  end

  def example1 do
    Either.Right.new({0, 0})
    >>> fn x -> land_right(2, x) end
    >>> fn x -> land_left(2, x) end
    >>> fn x -> land_right(2, x) end
  end
  # => %Either.Right{right: {2, 4}}

  def example2 do
    Either.Right.new({0, 0})
    >>> fn x -> land_left(1, x) end
    >>> fn x -> land_right(4, x) end
    >>> fn x -> land_left(-1, x) end
    >>> fn x -> land_right(-2, x) end
  end
  # => %Either.Left{left: :lost_balance}

end
