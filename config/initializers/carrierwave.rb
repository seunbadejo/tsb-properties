CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:                'AWS',
    aws_access_key_id:       'AKIA3LKVHFVJIGGZEHQC',
    aws_secret_access_key:   '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',
    region:                   'us-west-2'
  }
  config.storage = :fog
  config.permissions = 0666
  config.directory_permissions = 0777
  config.storage = :file
  config.cache_dir = "#{Rails.root}/tmp/"
  config.fog_directory = 'myproperties'
  config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}"}
end
