# frozen_string_literal: true

require_relative "jp_address_splitter/version"

module JpAddressSplitter
  class Error < StandardError; end
  
  class Parser
    def parse(address)
      {
        full_address: address,       # 入力されたそのままの文字列（ログ用など）
        prefecture: nil,    # 都道府県名（例: "東京都"）
        city: nil,          # 市区町村（例: "新宿区"）
        town: nil,          # 町名（例: "西新宿"）
        banchi: nil,        # 番地（例: "8番"）
      }
    end
  end
end
