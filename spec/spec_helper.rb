# To disable warnings
RSpec.configure do |c|
  c.mock_with :rspec
end

# Original Line of Code
require 'puppetlabs_spec_helper/module_spec_helper'

# Added later for fixture
# This is useful in jenkins

fixture_path = File.expand_path(File.join(__FILE__, '..', 'fixtures'))

RSpec.configure do |c|
  c.module_path = File.join(fixture_path, 'modules')
  c.manifest_dir  = File.join(fixture_path, 'manifests')
end
