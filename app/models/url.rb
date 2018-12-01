class Url < ApplicationRecord
  validates :original_url, presence: true, url: true
  validates :slug, presence: true, uniqueness: true, slug: true

  def to_param
    slug
  end
end
