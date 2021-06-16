defmodule ExPoleDancerTest do
  use ExUnit.Case

  test "with syntax example 1" do
    assert WithSyntax.example1 == {:ok, {2, 4}}
  end

  test "with syntax example 2" do
    assert WithSyntax.example2 == {:error, :lost_balance}
  end

end
