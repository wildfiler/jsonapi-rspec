require 'simplecov'
require 'jsonapi/rspec'

SimpleCov.start do
  add_filter '/spec/'
end
SimpleCov.minimum_coverage 90

# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.order = :random
  config.shared_context_metadata_behavior = :apply_to_host_groups

  Kernel.srand config.seed
end
