require 'spec_helper'

describe User do
  it { should validate_presence_of(:phone_number) }
  it { should_not allow_value("foo").for(:phone_number).with_message("Only numbers allowed") }
  it { should allow_value("324124").for(:phone_number) }
  it { should ensure_inclusion_of(:from_currency).in_array(Exchange::CURRENCIES) }
  it { should ensure_inclusion_of(:to_currency).in_array(Exchange::CURRENCIES) }

end

