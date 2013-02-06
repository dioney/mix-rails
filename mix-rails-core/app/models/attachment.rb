class Attachment < ActiveRecord::Base
  attr_accessible :file, :name
  mount_uploader :file, Core::FileUploader
end
