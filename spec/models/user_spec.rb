require 'spec_helper'

describe User do

  context 'given a phone number' do
    context 'which is valid' do
      it { should validate_presence_of(:phone_number) }
      it { should allow_value("07234567890").for(:phone_number) }
      it { should allow_value("+44 020 3241 4324").for(:phone_number) }
    end

    context "which is invalid" do
      it { should_not allow_value("foo").for(:phone_number).with_message("Only numbers allowed") }
    end
  end

  it { should ensure_inclusion_of(:from_currency).in_array(Exchange::CURRENCIES) }
  it { should ensure_inclusion_of(:to_currency).in_array(Exchange::CURRENCIES) }

end

