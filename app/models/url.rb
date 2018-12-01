class Url < ApplicationRecord
  validates_presence_of :slug, :original_url
  validates_uniqueness_of :slug
end
