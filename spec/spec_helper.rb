require 'bundler'
Bundler.setup(:default, :test)

require 'rspec'
require 'rspec/autorun'




require 'php-rspec'

RSpec.configure do |config|
  config.mock_with :mocha
end

