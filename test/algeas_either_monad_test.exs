defmodule AlgeasEitherMonadTest do
  use ExUnit.Case
  alias Algae.Either

  test "maybe monad example 1" do
    assert AlgaesEitherMonad.example1() == %Either.Right{right: {2, 4}}
  end

  test "maybe monad example 2" do
    assert AlgaesEitherMonad.example2() == %Either.Left{left: :lost_balance}
  end
end
