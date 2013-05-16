class User < ActiveRecord::Base

  attr_accessible :from_currency, :name, :phone_number, :to_currency

  validates :phone_number, :format => { :with => /^\+?[0-9\s]+$/,
    :message => "Only numbers allowed" },
    :presence => true,
    :uniqueness => true


   validates :from_currency, :to_currency, :inclusion => { :in => Exchange::CURRENCIES,
    :message => "%{value} is not a valid currency" }

    def update(user)
      self.name = user.name
      self.phone_number = user.phone_number
      self.to_currency = user.to_currency
      self.from_currency = user.from_currency
    end
end
