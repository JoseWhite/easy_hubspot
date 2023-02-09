# frozen_string_literal: true

require 'easy_hubspot'
require 'webmock/rspec'
require 'capybara/rspec'
require 'helper'
require 'pry'

require File.expand_path 'lib/easy_hubspot'

Dir['./spec/support/**/*.rb'].sort.each { |f| require f }

RSpec.configure do |config|
  config.include Helper
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  # config.before(:each) do
  #   stub_request(:any, /api.hubapi.com/).to_rack(FakeHubspot)
  # end
end

WebMock.disable_net_connect!(allow_localhost: true)
