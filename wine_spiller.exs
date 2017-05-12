defmodule WineSpiller do
  def start(count) do
    spawn(fn -> loop(count) end)
  end

  def loop(count) do
    receive do
      {:hi, message} ->
        IO.inspect("Hello: #{message}")
      {:bye, message} ->
        IO.inspect("Bye: #{message}")
      message ->
        IO.inspect(message)
    end

    IO.inspect(count)
    loop(count + 1)
  end
end