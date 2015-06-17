require "Regulus/version"

module Regulus
  def self.match_0_to_999999(string)
     string.scan(/^\d{1,6}$/)
  end
end
