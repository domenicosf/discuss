defmodule Discuss.Topics.Topic do
  use Ecto.Schema
  import Ecto.Changeset

  schema "topics" do
    field :title, :string
    belongs_to :user, Discuss.Users.User
    has_many :comments, Discuss.Comments.Comment

    timestamps()
  end

  @doc false
  def changeset(topic, attrs \\ %{}) do
    topic
    |> cast(attrs, [:title])
    |> validate_required([:title])
  end
end
