defmodule Example.Character do
  use Ecto.Schema

  schema "characters" do
    field :name, :string
    belongs_to :movie, Example.Movie
  end
end
