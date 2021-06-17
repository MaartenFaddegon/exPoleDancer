defmodule OkResultMonad do
  use OK.Pipe

  def land_left({left, right}, n) do
    if abs(left + n - right) < 4 do
      {:ok, {left + n, right}}
    else
      {:error, :lost_balance}
    end
  end

  def land_right({left, right}, n) do
    if abs(left - (right + n)) < 4 do
      {:ok, {left, right + n}}
    else
      {:error, :lost_balance}
    end
  end

  def example1 do
    {0, 0}
    |>  land_right(2)
    ~>> land_left(2)
    ~>> land_right(2)
  end
  # => {:ok, {2, 4}}

  def example2 do
    {0, 0}
    |>  land_left(1)
    ~>> land_right(4)
    ~>> land_left(-1)
    ~>> land_right(-2)
  end
  # => {:error, :lost_balance}

end
