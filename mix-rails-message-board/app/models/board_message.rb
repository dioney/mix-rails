class BoardMessage < ActiveRecord::Base
  extend Enumerize

  attr_accessible :date, :email, :message, :name, :status
  enumerize :status, in: [:pending, :approved, :disapproved], default: :pending, predicates: true

  validates_presence_of :name, :email, :message, :date
  validates :email, email: true

  scope :approved, where(status: :approved)
  scope :pending, where(status: :pending)

  has_many :board_replies


  default_value_for :date do
    Time.now
  end
  
end
