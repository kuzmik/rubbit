require 'spec_helper'

describe Rubbit::Client do
  it 'croak connects to the api' do
    c = Rubbit::Client.new

    c.croak
  end
end
