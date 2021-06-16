defmodule AlgeasMaybeMonadTest do
  use ExUnit.Case
  alias Algae.Maybe

  test "maybe monad example 1" do
    assert AlgaesMaybeMonad.example1() == %Maybe.Just{just: {2, 4}}
  end

  test "maybe monad example 2" do
    assert AlgaesMaybeMonad.example2() == %Maybe.Nothing{}
  end
end
