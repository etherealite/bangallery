CarrierWave.configure do |config|
  if Rails.env.production?
    config.storage = :fog
    config.fog_credentials = {
      :provider                         => 'Google',
      :google_storage_access_key_id     => ENV['GDEVSTORE_ID'],
      :google_storage_secret_access_key => ENV['GDEVSTORE_SECRET']
    }
    config.fog_directory = 'bangallery'
  else
    config.storage = :file
  end
end

