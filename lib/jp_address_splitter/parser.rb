module JpAddressSplitter
  class Parser
    
    def parse(address)
      prefecture = address.strip[/^.*?[都道府県]/].to_s || "" # 都道府県名を取得
      city = address.sub(prefecture, "").strip[/.*?[市区町村]/].to_s || "" # 市区町村名を取得
      {
        full_address: address,       # 入力されたそのままの文字列（ログ用など）
        prefecture: prefecture,    # 都道府県名（例: "東京都"）
        city: city,          # 市区町村（例: "新宿区"）
        town: nil,          # 町名（例: "西新宿"）
        banchi: nil        # 番地（例: "8番"）
      }
    end
  end
end