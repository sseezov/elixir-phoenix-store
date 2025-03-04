defmodule StoreWeb.HelloHTML do
  use StoreWeb, :html

  def index(assigns) do
    ~H"""
    Hello!
    """
  end
end
