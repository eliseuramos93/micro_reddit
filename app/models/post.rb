class UrlValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return if value.blank?
    begin
      uri = URI.parse(value)
      resp = uri.kind_of?(URI::HTTP)
    rescue URI::InvalidURIError
      resp = false
    end
    unless resp == true
      record.errors.add attribute, (options[:message] || "is not an url")
    end
  end
end

class Post < ApplicationRecord
  validates :post_title, presence: true, length: { in: 1..50 }
  validates :post_url, presence: true, url: true

  belongs_to :user
  has_many :comments
end
