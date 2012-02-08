if Rails.env.test? or Rails.env.development?
  CarrierWave.configure do |config|
    config.storage = :file
  end
end

