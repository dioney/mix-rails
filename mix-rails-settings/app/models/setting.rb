class Setting < ActiveRecord::Base
  attr_accessible :activated, :key, :name, :system, :value, :image, :image_cache

  mount_uploader :image, Settings::ImageUploader
  
  def self.app_title
    begin
      Setting.where(key: 'app_title', activated: true).first.value
    rescue
      false
    end
  end

  def self.app_email
    begin
      Setting.where(key: 'app_email', activated: true).first.value
    rescue
      false
    end
  end
  
  def self.admix_logo
    begin
      Setting.where(key: 'admix_logo', activated: true).first
    rescue
      false
    end
  end

  def self.link_twitter
    begin
      Setting.where(key: 'link_twitter', activated: true).first.value
    rescue
      false
    end
  end

  def self.link_facebook
    begin
      Setting.where(key: 'link_facebook', activated: true).first.value
    rescue
      false
    end
  end

  def self.albums_watermark
    begin
      Setting.where(key: 'albums_watermark', activated: true).first
    rescue
      false
    end
  end

  def self.albums_title
    begin
      Setting.where(key: 'albums_title', activated: true).first.value
    rescue
      false
    end
  end


end
