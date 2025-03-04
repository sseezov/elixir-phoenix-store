defmodule StoreWeb.HelloController do
  use StoreWeb, :controller

  def index(conn, _params) do
    render(conn, :index)
  end
end
