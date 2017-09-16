defmodule DiversityInTechWeb.Router do
  use DiversityInTechWeb, :router

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

  scope "/", DiversityInTechWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  # Admin scope
    scope "/admin", DiversityInTechWeb.Admin, as: :admin do
      pipe_through [:browser, :browser_session]

      # Admin unauthenticated scope
      scope "/" do
      end

      # Admin authenticated scope
      scope "/" do
      end
    end
end
