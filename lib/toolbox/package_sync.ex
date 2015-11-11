# TODO: Schedule this. Until then, run manually like so:
#
#     mix run -e 'Toolbox.PackageSync.run'
#     ssh dokku run toolbox mix run -e 'Toolbox.PackageSync.run'

defmodule Toolbox.PackageSync do
  def run(client \\ HexClient) do
    client
    |> fetch_updates
    |> store_updates
  end

  defp fetch_updates(client), do: Toolbox.PackageSync.FetchUpdates.fetch(client)
  defp store_updates(data), do: Toolbox.PackageSync.StoreUpdates.store(data)
end
