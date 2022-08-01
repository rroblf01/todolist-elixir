defmodule Todoelixir.Repo.Migrations.CreateNotes do
  use Ecto.Migration

  def change do
    create table(:notes) do
      add :title, :string
      add :description, :text
      add :completed, :boolean, default: false, null: false

      timestamps()
    end

  end
end
