ENV["RAILS_ENV"] ||= "test"

require File.expand_path("../config/environment", __dir__)
require "rspec/rails"
# require "simplecov"
# require "email_spec"
# require "email_spec/rspec"
require "action_policy/rspec/dsl"
# require "webmock/rspec"

# SimpleCov.start "rails" do
#   add_group "Interactors", "app/interactors"
#   add_group "Policies", "app/policies"
# end

Dir[Rails.root.join("spec/support/**/*.rb")].sort.each { |f| require f }

ActiveRecord::Migration.maintain_test_schema!
