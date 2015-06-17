require "Regulus/version"

module Regulus
  def self.match_0_to_999999(string)
   s = Scanner.new  
   s.perform(string,/^\d{1,6}$/)
  end

  def self.is_zip_code?(string)
   s = Scanner.new 
   not s.perform(string, /^\d{5}(-\d{4})?$/).empty?
  end

  def self.is_currency?(string)
   s = Scanner.new
   not s.perform(string, /^-?(?:0|[1-9]\d{0,2}(?:,?\d{3})*)(?:\.\d+)?$/).empty?
  end

  class Scanner
    def perform(string, regex); string.scan(regex); end
   end
end
