class Song < ActiveRecord::Base
  extend Enumerize
  extend FriendlyId

  attr_accessible :author, :mp3, :slug, :status, :title

  enumerize :status, in: [:published, :unpublished], default: :published, predicates: true
  friendly_id :title, use: :slugged

  mount_uploader :mp3, Songs::SongUploader

  validates_presence_of :title
  validates_presence_of :author

  scope :published, where(status: :published)

  belongs_to :related, polymorphic: true

end
