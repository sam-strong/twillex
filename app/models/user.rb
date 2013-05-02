class User < ActiveRecord::Base

  attr_accessible :from_currency, :name, :phone_number, :to_currency

  validates :phone_number, :format => { :with => /^[-+]?[0-9]+$/,
    :message => "Only numbers allowed" },
    :presence => true

   validates :from_currency,:to_currency,    :inclusion => { :in => Exchange::CURRENCIES,
    :message => "%{value} is not a valid currency" }
end
