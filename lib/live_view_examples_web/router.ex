defmodule LiveViewExamplesWeb.Router do
  use LiveViewExamplesWeb, :router
  import Phoenix.LiveView.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug Phoenix.LiveView.Flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", LiveViewExamplesWeb do
    pipe_through :browser

    get "/", PageController, :index
    live "/timer", Timer
    live "/counter", Counter
  end

  # Other scopes may use custom stacks.
  # scope "/api", LiveViewExamplesWeb do
  #   pipe_through :api
  # end
end
