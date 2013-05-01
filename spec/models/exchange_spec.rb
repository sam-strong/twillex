require 'spec_helper'

describe Exchange do

  describe '.new' do
    it 'has a provider' do
      provider = double(:provider, :convert => nil )
      exchange = Exchange.new(provider)

      exchange.provider.should eq provider
    end

    context 'passed argument does not have a convert method' do
      it 'raises an argument exception' do
        expect { exchange = Exchange.new(:provider) }.to raise_error
      end
    end

    context 'given the convert method is called' do
      it 'calls the convert method on the provider' do
        provider = double(:provider)
        provider.should_receive(:convert).with(10, "USD", "GBP")
        exchange = Exchange.new(provider)
        exchange.convert 10, "USD", "GBP"
      end
    end
  end
end
