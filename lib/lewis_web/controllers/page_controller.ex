defmodule LewisWeb.PageController do
  use LewisWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
