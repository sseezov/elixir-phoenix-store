defmodule StoreWeb.HelloController do
  use StoreWeb, :controller

  def index(conn, _params) do
    conn
    |> put_layout(html: :admin)
    |> render(:index)
  end

  def show(conn, %{"messenger" => messenger}) do
    # text(conn, "Hello, from #{messenger}")
    # json(conn, %{id: messenger})
    render(conn, :show, messenger: messenger)
  end
end
