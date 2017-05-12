defmodule WineSpillerGenserver do
  use GenServer

  def init(initial_state) do
    {:ok, initial_state}
  end

  def handle_cast({:bye, message}, state) do
    IO.inspect("State: #{state}")
    IO.inspect("Bye: #{message}")
    {:noreply, state + 1}
  end

  def handle_call({:hi, message}, pid, state) do
    IO.inspect("State: #{state}")
    IO.inspect("Hello!: #{message}")
    IO.inspect(pid)
    {:reply, 42, state + 1}
  end
end