Fabricator(:station, aliases: [:enabled_station]) do
  name            'Developer'
  host            'HostName'
end

Fabricator(:disabled_station, parent: :station) do
  state           'disabled'
end
