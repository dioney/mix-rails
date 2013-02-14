class Attachment < ActiveRecord::Base
  attr_accessible :file, :file_cache, :name
  mount_uploader :file, Core::FileUploader

  belongs_to :related, polymorphic: true

end
