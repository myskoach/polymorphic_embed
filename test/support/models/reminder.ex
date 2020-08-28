defmodule PolymorphicEmbed.Reminder do
  use Ecto.Schema
  use QueryBuilder
  import Ecto.Changeset

  schema "reminders" do
    field(:date, :utc_datetime)
    field(:text, :string)
    field(:channel, PolymorphicEmbed.ChannelData)
    field(:contexts, {:array, PolymorphicEmbed.Reminder.Context}, default: [])

    timestamps()
  end

  def changeset(struct, values) do
    struct
    |> cast(values, [:date, :text, :channel, :contexts])
    |> validate_required(:date)
  end
end
