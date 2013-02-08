class Voucher < ActiveRecord::Base
  extend FriendlyId

  attr_accessible :date_from, :date_to, :name, :partner_photo, :photo, :rules
  attr_accessible :photo_cache, :partner_photo_cache

  scope :actives, -> { where("date_from <= ? and date_to >= ?", Date.today, Date.today) }

  has_many :users, class_name: 'VoucherUser', dependent: :delete_all

  mount_uploader :photo, Vouchers::PhotoUploader
  mount_uploader :partner_photo, Vouchers::PhotoUploader

  validates_presence_of :name, :rules, :photo

  friendly_id :name, use: :slugged

end
