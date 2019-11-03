defmodule LiveViewExamplesWeb.Timer do
  use Phoenix.LiveView
  import Calendar.Strftime

  def mount(_session, socket) do
    if connected?(socket), do: :timer.send_interval(1000, self(), :tick)

    {:ok, put_date(socket)}
  end

  def render(assigns) do
    ~L"""
    <h1>It's <%= strftime!(@date, "%r") %></h1>
    """
  end

  def handle_info(:tick, socket) do
    {:noreply, put_date(socket)}
  end

  defp put_date(socket) do
    assign(socket, date: :calendar.local_time())
  end
end
