defmodule Chained.Document do
  use Chained.Web, :model

  schema "documents" do
    field :hash, :string
    field :body, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:hash, :body])
    |> validate_required([:hash, :body])
  end
end
