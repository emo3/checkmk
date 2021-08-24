# Inspec test for recipe checkmk::default
# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  describe user('root'), :skip do
    it { should exist }
  end
end

describe port(80), :skip do
  it { should_not be_listening }
end

describe port(443), :skip do
  it { should_not be_listening }
end

describe port(16556), :skip do
  it { should_not be_listening }
end
