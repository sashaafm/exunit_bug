defmodule ExunitBugTest do
  use ExUnit.Case

  test "with base :test tag" do
    assert 1 + 1 == 2
  end

  @tag :a
  test "with :a tag" do
    assert 1 + 1 == 2
  end

  @tag :b
  test "with :b tag" do
    assert 1 + 1 == 2
  end
end
