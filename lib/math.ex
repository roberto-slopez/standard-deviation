defmodule Math do
  @derive [Poison.Encoder]

  def main(args) do
    args |> parse_args |> process
  end

  def process([]) do
    IO.puts("No arguments given")
  end

  def process(options) do
    numeros = Poison.decode!(options[:nums])
    average = Enum.sum(numeros) / Enum.count(numeros)
    sumpows = Enum.sum(Enum.map(numeros, fn x -> :math.pow(x - average, 2) end))
    result = :math.sqrt(sumpows)

    IO.puts("Result: #{result} Average: #{average}")
  end

  defp parse_args(args) do
    {options, _, _} = OptionParser.parse(args, switches: [nums: :string])
    options
  end
end
