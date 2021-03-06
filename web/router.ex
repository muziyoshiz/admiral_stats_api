defmodule AdmiralStatsApi.Router do
  use AdmiralStatsApi.Web, :router

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

  scope "/", AdmiralStatsApi do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  scope "/", AdmiralStatsApi do
    pipe_through :api

    scope "/v1", V1, as: :v1 do
      get "/sources", SourceController, :index
    end
  end
end
