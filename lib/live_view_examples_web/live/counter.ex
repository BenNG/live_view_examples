defmodule LiveViewExamplesWeb.Counter do
  use Phoenix.LiveView

  def mount(_session, socket) do
    {:ok, assign(socket, counter: 0)}
  end

  def render(assigns) do
    ~L"""
    <h1>Counter:  <%= @counter %></h1>
    <button phx-click="incr">+</button>
    """
  end

  def handle_event("incr", _value, socket) do
    socket = assign(socket, :counter, socket.assigns.counter + 1)
    {:noreply, socket}
  end
end
