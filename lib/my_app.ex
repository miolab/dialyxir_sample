defmodule MyApp do
  @moduledoc """
  Documentation for `MyApp`.
  """

  @type error_map :: %{
          message: String.t(),
          line_number: integer
        }

  @spec calc(any) :: float | error_map()
  def calc(a) do
    if a == 0 do
      %{
        message: "zero",
        line_nubber: 1
      }
    else
      1 / a
    end
  end

  @spec sum_product(number) :: number
  def sum_product(a) do
    [1, 2, 3]
    |> Enum.map(fn el -> el * a end)
    |> Enum.sum()
  end

  @doc """
  Hello world.

  ## Examples

      iex> MyApp.hello()
      :world

  """
  def hello(param) do
    param
  end
end

defmodule Examples do
  defstruct first: 0, last: 0

  @type t(first, last) :: %Examples{first: first, last: last}
  @type t :: %Examples{first: integer, last: integer}

  @spec sum_times(integer, Examples.t()) :: integer
  def sum_times(a, params) do
    for i <- params.first..params.last do
      i
    end
    |> Enum.map(fn el -> product(el, a) end)
    |> Enum.sum()
    |> round
  end

  @spec product(integer, integer) :: integer
  def product(x, y), do: x + y
end

defmodule Person do
  @typedoc """
  A 4 digit year, e.g. 1984
  """
  @type year :: integer

  @spec current_age(year) :: integer
  def current_age(year_of_birth), do: 2021 - year_of_birth
end

defmodule LousyCalculator do
  @typedoc """
  Just a number followed by a string.
  """
  @type number_with_remark :: {number, String.t()}

  @spec add(number, number) :: number_with_remark
  def add(x, y), do: {x + y, "You need a calculator to do that?"}

  @spec multiply(number, number) :: number_with_remark
  def multiply(x, y), do: {x * y, "It is like addition on steroids."}
end

defmodule QuietCalculator do
  @spec add(number, number) :: number
  def add(x, y), do: make_quiet(LousyCalculator.add(x, y))

  @spec make_quiet(LousyCalculator.number_with_remark()) :: number
  defp make_quiet({num, _remark}), do: num
end
