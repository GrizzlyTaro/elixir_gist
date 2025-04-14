defmodule ElixirGist.Gists.SavedGist do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "saved_gists" do
    belongs_to(:user, ElixirGist.Accounts.User)
    belongs_to(:gist, ElixirGist.Gists.Gist)
    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(saved_gist, attrs) do
    saved_gist
    |> cast(attrs, [])
    |> validate_required([])
  end
end
