defmodule Example.Movie do
  use Ecto.Schema

  schema "movies" do
    field :title, :string
    field :tagline, :string
    has_many :characters, Example.Character
    has_one :distributor, Example.Distributor
    many_to_many :actors, Example.Actor, join_through: "movies_actors"
  end
end
