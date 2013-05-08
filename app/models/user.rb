class User < ActiveRecord::Base

  attr_accessible :from_currency, :name, :phone_number, :to_currency

  validates :phone_number, :format => { :with => /^\+?[0-9\s]+$/,
    :message => "Only numbers allowed" },
    :presence => true

   validates :from_currency, :to_currency, :inclusion => { :in => Exchange::CURRENCIES,
    :message => "%{value} is not a valid currency" }

    def self.from_omniauth(auth)
      where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
          user.provider = auth.provider
          user.uid = auth.uid
          user.name = auth.info.name
          user.oauth_token = auth.credentials.token
          user.oauth_expires_at = Time.at(auth.credentials.expires_at)
          user.save!
      end
    end
end
