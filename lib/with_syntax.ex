defmodule WithSyntax do
  def land_left(n, {left, right}) do
    if abs(left + n - right) < 4 do
      {:ok, {left + n, right}}
    else
      {:error, :lost_balance}
    end
  end

  def land_right(n, {left, right}) do
    if abs(left - (right + n)) < 4 do
      {:ok, {left, right + n}}
    else
      {:error, :lost_balance}
    end
  end

  def example1 do
    with {:ok, pole1} <- land_right(2, {0, 0}),
         {:ok, pole2} <- land_left(2, pole1),
         {:ok, pole3} <- land_right(2, pole2) do
      {:ok, pole3}
    else
      error -> error
    end
  end
  # => {:ok, {2, 4}}

  def example2 do
    with {:ok, pole1} <- land_left(1, {0, 0}),
         {:ok, pole2} <- land_right(4, pole1),
         {:ok, pole3} <- land_left(-1, pole2),
         {:ok, pole4} <- land_right(-2, pole3) do
      {:ok, pole4}
    else
      error -> error
    end
  end
  # => {:error, :lost_balance}

end
