CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJYSTH7Q4GLZFLVQA',                        # required
    aws_secret_access_key: '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',                        # required
   
  }
  config.fog_directory  = 'mooklight'                          # required
end