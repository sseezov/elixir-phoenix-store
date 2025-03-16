defmodule StoreWeb.PageController do
  use StoreWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    redirect(conn, to: ~p"/redirect_test")
    # render(conn, :home, layout: false)
  end

  def flashy(conn, _params) do
    conn
    |> put_flash(:error, "Let's pretend we have an error.")
    |> render(:flashy, layout: false)
  end

  def redirect_test(conn, _params) do
    render(conn, :home, layout: false)
  end
end
