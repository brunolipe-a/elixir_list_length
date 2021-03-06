defmodule ListLengthTest do
  use ExUnit.Case

  test "return the length of a list" do
    list = [1, 3, 5, 12, 54, 65]

    response = ListLength.call(list)

    assert response == 6
  end

  test "return the length of a list with different types" do
    list = ["banana", 3, 5.5, "shield", 54, true]

    response = ListLength.call(list)

    assert response == 6
  end

  test "return 0 to an empty list" do
    list = []

    response = ListLength.call(list)

    assert response == 0
  end
end
