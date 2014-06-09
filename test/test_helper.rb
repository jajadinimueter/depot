ENV["RAILS_ENV"] ||= "test"

# Coveralls.io for test coverage
require 'coveralls'
Coveralls.wear! 'rails'

require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
end

# Helper currency_to_locale added
# require 'rubygems'
# require 'action_view'
# require 'action_view/helpers'
require './app/helpers/application_helper'
include ApplicationHelper
