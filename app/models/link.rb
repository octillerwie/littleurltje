class Link < ApplicationRecord
  validates :original_url, uniqueness: true, format: { :with => URI::regexp(%w(http https)), message: 'You provided an invalid URL' }
  validates_presence_of :original_url, :message => 'You provided an invalid URL'
end
