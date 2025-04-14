defmodule ElixirGist.Comments.Comment do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "comments" do
    field(:mark_up_text, :string)
    belongs_to(:user, ElixirGist.Accounts.User)
    belongs_to(:gist, ElixirGist.Gists.Gist)

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(comment, attrs) do
    comment
    |> cast(attrs, [:mark_up_text, :user_id, :gist_id])
    |> validate_required([:mark_up_text, :user_id, :gist_id])
  end
end
