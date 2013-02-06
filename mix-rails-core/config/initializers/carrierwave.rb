CarrierWave.configure do |config|
  config.storage              = :file
  #config.cache_dir = "uploads"
  config.root = Rails.root.join('public')
end