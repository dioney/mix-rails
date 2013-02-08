class Album < ActiveRecord::Base
  extend Enumerize
  extend FriendlyId

  attr_accessible :date, :description, :status, :title

  enumerize :status, in: [:published, :unpublished], default: :published, predicates: true
  friendly_id :title, use: :slugged

  has_many :photos, :as => :related
  belongs_to :related, :polymorphic => true

  validates_presence_of :title, :date

  scope :published, where(status: :published).joins(:photos).having("count(photos.id) > 1")

end
