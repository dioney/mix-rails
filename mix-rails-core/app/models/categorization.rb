class Categorization < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :categorizable, :polymorphic => true
  belongs_to :category
end
