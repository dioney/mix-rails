class Photo < ActiveRecord::Base
  extend FriendlyId

  attr_accessible :description, :image, :image_cache
  
  friendly_id :description, use: :slugged

  belongs_to :related, :polymorphic => true
  
  mount_uploader :image, Albums::ImageUploader
end
