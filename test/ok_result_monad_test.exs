defmodule OkResultMonadTest do
  use ExUnit.Case

  test "ok Result monad example 1" do
    assert OkResultMonad.example1() == {:ok, {2, 4}}
  end

  test "ok Result monad example 2" do
    assert OkResultMonad.example2() == {:error, :lost_balance}
  end
end
