require 'spec_helper'

describe Exchange do
  it 'converts one value into another' do
    Exchange.convert(2).should eq 3
  end

end