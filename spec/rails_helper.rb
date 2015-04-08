ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'spec_helper'
require 'rspec/rails'
require 'database_cleaner'
require 'capybara/poltergeist'
require 'shoulda-matchers'

Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }


ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  config.before(:suite) do
      DatabaseCleaner.clean_with :truncation
	    DatabaseCleaner.strategy = :transaction
	end

  config.around(:each) do |example|
    DatabaseCleaner.cleaning do
      example.run
    end
  end

  config.use_transactional_fixtures = false
  config.infer_spec_type_from_file_location!
end
