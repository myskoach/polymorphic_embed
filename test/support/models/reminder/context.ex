defmodule PolymorphicEmbed.Reminder.Context do
  use PolymorphicEmbed,
    types: [
      location: PolymorphicEmbed.Reminder.Context.Location,
      age: PolymorphicEmbed.Reminder.Context.Age,
      device: PolymorphicEmbed.Reminder.Context.Device
    ]
end
