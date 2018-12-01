require 'uri'

class SlugValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return if value.downcase.match?(/\A[^\s!#$%^&*()（）=+;:'"\[\]\{\}|\\\/<>?,]+\z/)
    record.errors[attribute] << (options[:message] || "can only contain alphanumeric characters and hyphens (-), underscores (_) and dots(.)")
  end
end
