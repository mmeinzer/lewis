defmodule LewisWeb.Router do
  use LewisWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", LewisWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/paid", PaidController, :index
    get "/paid/:bill", PaidController, :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", LewisWeb do
  #   pipe_through :api
  # end
end
