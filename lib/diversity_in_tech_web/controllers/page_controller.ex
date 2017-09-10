defmodule DiversityInTechWeb.PageController do
  use DiversityInTechWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
