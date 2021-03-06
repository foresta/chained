defmodule Chained.Router do
  use Chained.Web, :router

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

  scope "/", Chained do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index

#    get "/signin", AuthenticationController, :index
#    post "/signin", AuthenticationController, 
#    get "/signup",
#    post "/user"
#

    get "/doc", DocumentController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", Chained do
  #   pipe_through :api
  # end
end
