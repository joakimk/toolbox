defmodule Toolbox.Router do
  use Toolbox.Web, :router
  use Honeybadger.Plug

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

  scope "/", Toolbox do
    pipe_through :browser # Use the default browser stack

    get "/", PackageController, :index
    resources "/packages", PackageController, only: [:edit, :update]
    resources "/categories", CategoryController
  end

  # Other scopes may use custom stacks.
  # scope "/api", Toolbox do
  #   pipe_through :api
  # end
end
