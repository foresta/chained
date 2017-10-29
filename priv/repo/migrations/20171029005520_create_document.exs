defmodule Chained.Repo.Migrations.CreateDocument do
  use Ecto.Migration

  def change do
    create table(:documents) do
      add :hash, :string
      add :body, :string

      timestamps()
    end

  end
end
