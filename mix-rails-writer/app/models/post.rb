class Post < ActiveRecord::Base
  extend Enumerize
  extend FriendlyId

  attr_accessible :content, :date, :slug, :source, :status, :title, :type, :image, :image_cache
  friendly_id :title, use: :slugged
  enumerize :status, in: [:published, :unpublished], default: :published, predicates: true


  validates_presence_of :title, :date


  scope :published, where(status: :published)

  mount_uploader :image, Writer::ImageUploader

end
