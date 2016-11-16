defmodule AdmiralStatsApi.V1.SourceController do
  use AdmiralStatsApi.Web, :controller

  def index(conn, _params) do
    # エクスポート可能な URL のファイルパス（https://kancolle-arcade.net/ac/api/ 以下）
    sources = [
      "Personal/basicInfo",
      "Area/captureInfo",
      "TcBook/info",
      "EquipBook/info",
      # 以下3件は常に空の配列が返るため、エクスポート対象から除外する
      # "Campaign/history",
      # "Campaign/info",
      # "Campaign/present",

      # From REVISION 2 (2016-06-30)
      "CharacterList/info",
      "EquipList/info",

      # From 2016-07-26
      "Quest/info",

      # From 2016-10-27
      "Event/info",
      # イベントの開始・終了日とイベントアイコンの表示制御フラグのみを返す
      # "Event/hold",
    ]

    render conn, "index.json", sources: sources
  end
end
