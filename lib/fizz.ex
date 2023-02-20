defmodule Fizz do
  @moduledoc """
  Documentation for `Fizz`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Fizz.hello()
      :world

  """
  def hello do
    Enum.map(7..120, fn i ->
      cond do
        Integer.mod(i, 3) == 0 and Integer.mod(i, 5) == 0 and Integer.mod(i, 7) == 0 ->
          "pizzaparty" |> IO.inspect()

        Integer.mod(i, 3) == 0 and Integer.mod(i, 5) == 0 ->
          "fizzbuzz" |> IO.inspect()

        Integer.mod(i, 5) == 0 and Integer.mod(i, 7) == 0 ->
          "buzzpop" |> IO.inspect()

        Integer.mod(i, 3) == 0 and Integer.mod(i, 7) == 0 ->
          "fizzpop" |> IO.inspect()

        Integer.mod(i, 3) == 0 ->
          "fizz" |> IO.inspect()

        Integer.mod(i, 5) == 0 ->
          "buzz" |> IO.inspect()

        Integer.mod(i, 7) == 0 ->
          "pop" |> IO.inspect()

        true ->
          i |> IO.inspect()
      end
    end)
  end
end
