defmodule LiveViewExamplesWeb.PageController do
  use LiveViewExamplesWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
