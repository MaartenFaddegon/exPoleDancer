defmodule ExceptionalsErrorMonad do
  use Exceptional

  def land_left(n, {left, right}) do
    if abs(left + n - right) < 4 do
      {left + n, right}
    else
      %MyException{
        reason: :lost_balance
      }
    end
  end

  def land_right(n, {left, right}) do
    if abs(left - (right + n)) < 4 do
      {left, right + n}
    else
      %MyException{
        reason: :lost_balance
      }
    end
  end

  def example1 do
    {0, 0}
    ~> (fn x -> land_right(2, x) end).()
    ~> (fn x -> land_left(2, x) end).()
    ~> (fn x -> land_right(2, x) end).()
  end

  # => {2, 4}

  def example2 do
    {0, 0}
    ~> (fn x -> land_left(1, x) end).()
    ~> (fn x -> land_right(4, x) end).()
    ~> (fn x -> land_left(-1, x) end).()
    ~> (fn x -> land_right(-2, x) end).()
  end

  # => %MyException{reason: :lost_balance}
end
