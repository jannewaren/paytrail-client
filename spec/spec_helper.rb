$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'pry'
require 'simplecov'
require 'vcr'

SimpleCov.start

require 'paytrail-client'

# Configure test credentials
PaytrailClient.configuration do |config|
  config.merchant_id = 13_466
  config.merchant_secret = '6pKF4jkv97zmqBJ3ZL8gUw5DfT2NMQ'
end

VCR.configure do |c|
  c.cassette_library_dir = 'spec/cassettes'
  c.hook_into :webmock
  c.configure_rspec_metadata!
end
