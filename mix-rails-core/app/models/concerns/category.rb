module Concerns::Category
  extend ActiveSupport::Concern

  included do
    include Mongoid::Document
    field :name
    validates_presence_of :name
  end

  module ClassMethods
  end

end