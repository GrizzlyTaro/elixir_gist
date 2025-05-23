defmodule ElixirGist.CommentsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ElixirGist.Comments` context.
  """

  @doc """
  Generate a comment.
  """
  def comment_fixture(attrs \\ %{}) do
    {:ok, comment} =
      attrs
      |> Enum.into(%{
        mark_up_text: "some mark_up_text"
      })
      |> ElixirGist.Comments.create_comment()

    comment
  end
end
