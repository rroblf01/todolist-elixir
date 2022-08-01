defmodule Todoelixir.Notes.Note do
  use Ecto.Schema
  import Ecto.Changeset

  schema "notes" do
    field :completed, :boolean, default: false
    field :description, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(note, attrs) do
    note
    |> cast(attrs, [:title, :description, :completed])
    |> validate_required([:title, :description, :completed])
  end
end
