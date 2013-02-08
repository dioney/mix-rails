class BoardReply < ActiveRecord::Base
  extend Enumerize
  
  attr_accessible :date, :email, :message, :name, :status
  enumerize :status, in: [:pending, :approved, :disapproved], default: :pending, predicates: true

  validates_presence_of :name, :email, :message, :date
  validates :email, email: true

  scope :approved, where(status: :approved)
  scope :pending, where(status: :pending)

  belongs_to :board_message

  default_value_for :name do
    Setting.app_title
  end

  default_value_for :email do
    Setting.app_email
  end

  default_value_for :date do
    Time.now
  end

end
