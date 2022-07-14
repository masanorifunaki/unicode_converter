# frozen_string_literal: true

require_relative "unicode_converter/version"

module UnicodeConverter
  class IncorrectTextError < StandardError; end
  # 結合用ではない濁点と半濁点を合字にする
  LIGATURE = { "\u309B" => "\u3099", "\u309C" => "\u309A" }.freeze

  def self.nfc(text)
    raise IncorrectTextError, "Incorrect text" unless text.instance_of?(String)

    text.gsub(/[\u309B\u309C]/, LIGATURE).unicode_normalize(:nfc)
  end
end
