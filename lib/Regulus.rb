require "Regulus/version"

module Regulus

  class Scanner
    def perform(string, regex); string.scan(regex); end
  end

  @scanner = Scanner.new

  def self.match_0_to_999999(string)
    @scanner.perform(string,/^\d{1,6}$/)
  end

  def self.is_zip_code?(string)
    not @scanner.perform(string, /^\d{5}(-\d{4})?$/).empty?
  end

  def self.is_currency?(string)
    not @scanner.perform(string, /^-?(?:0|[1-9]\d{0,2}(?:,?\d{3})*)(?:\.\d+)?$/).empty?
  end

  def self.is_username?(string)
    not @scanner.perform(string, /^[a-z0-9_-]{3,16}$/).empty?
  end

  def self.is_password?(string)
    not @scanner.perform(string, /^[a-z0-9_-]{6,18}$/).empty?
  end

  def self.is_email?(string)
    not @scanner.perform(string, /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/).empty?
  end

  def self.hex?(string)
    not @scanner.perform(string, /^#?([a-f0-9]{6}|[a-f0-9]{3})$/).empty?
  end

  def self.slug?(string)
    not @scanner.perform(string, /^[a-z0-9-]+$/).empty?
  end

  def self.url?(string)
    not @scanner.perform(string, /^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$/).empty?
  end

end
