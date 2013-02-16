module Concerns::Album
  extend ActiveSupport::Concern

  included do
    extend Enumerize
    extend FriendlyId

    attr_accessible :date, :description, :status, :title

    enumerize :status, in: [:published, :unpublished], default: :published, predicates: true
    friendly_id :title, use: :slugged

    has_many :photos, :as => :related, dependent: :destroy
    belongs_to :related, :polymorphic => true

    validation_for_title
    validation_for_date


    scope :published, includes(:photos).where(status: :published).having('COUNT(photos.id) > 0')

  end

  module ClassMethods
    
    def validation_for_title
      validates_presence_of :title
    end

    def validation_for_date
      validates_presence_of :date
    end

  end

end