require 'uri'

class UrlValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return if value.match?(/^#{URI::DEFAULT_PARSER.make_regexp}$/)
    record.errors[attribute] << (options[:message] || "must be a valid URL")
  end
end
