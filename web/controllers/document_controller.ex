defmodule Chained.DocumentController do
  use Chained.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

end
