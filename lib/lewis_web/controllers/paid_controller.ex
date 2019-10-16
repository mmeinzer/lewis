defmodule LewisWeb.PaidController do
  use LewisWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, %{"bill" => bill}) do
    render(conn, "show.html", bill: bill)
  end
end
