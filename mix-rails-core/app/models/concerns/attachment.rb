module Concerns::Attachment
  extend ActiveSupport::Concern

  included do
    field :name
    validates_presence_of :name
    mount_uploader :file, Core::FileUploader
  end

  module ClassMethods
  end

end