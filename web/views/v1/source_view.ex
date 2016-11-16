defmodule AdmiralStatsApi.V1.SourceView do
  use AdmiralStatsApi.Web, :view

  def render("index.json", %{sources: sources}) do
    sources
  end
end
