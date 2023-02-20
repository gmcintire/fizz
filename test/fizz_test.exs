defmodule FizzTest do
  use ExUnit.Case

  setup do
    result = Fizz.hello()
    %{result: result}
  end

  describe "hello/0" do
    test "fizzbuzz", %{result: result} do
      assert Enum.at(result, 8) == "fizzbuzz"
    end

    test "fizz", %{result: result} do
      assert Enum.at(result, 2) == "fizz"
    end

    test "buzz", %{result: result} do
      assert Enum.at(result, 3) == "buzz"
    end

    test "pop", %{result: result} do
      assert Enum.at(result, 3) == "buzz"
    end

    test "pizzaparty", %{result: result} do
      assert Enum.at(result, 98) == "pizzaparty"
    end

    test "fizzpop", %{result: result} do
      assert Enum.at(result, 14) == "fizzpop"
    end

    test "buzzpop", %{result: result} do
      assert Enum.at(result, 28) == "buzzpop"
    end
  end
end
