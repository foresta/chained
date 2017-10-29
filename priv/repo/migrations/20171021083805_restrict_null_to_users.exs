defmodule Chained.Repo.Migrations.RestrictNullToUsers do
  use Ecto.Migration

  def change do
    alter table(:users) do
      modify :email, :string, null: false
      modify :password, :string, null: false
    end
  end
end
