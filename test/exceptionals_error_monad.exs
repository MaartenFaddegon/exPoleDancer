defmodule ExceptionalsErrorMonadTest do
  use ExUnit.Case

  test "maybe monad example 1" do
    assert ExceptionalsErrorMonadTest.example1 == {0,0}
  end

  test "maybe monad example 2" do
    assert ExceptionalsErrorMonadTest.example2 == %MyException{reason: :lost_balance}
  end

end
