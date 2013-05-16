module Sms
  class ExchangesController < ApplicationController

    def create
      exchange = Exchange.from_config
      user = User.find_by_phone_number(params[:from])
      @converted_value = exchange.convert(params[:body].to_i,user.from_currency, user.to_currency)
      render :nothing => true
      twilio = TwilioApi.new
      twilio.send_sms(params[:from],"Your converted amount in JPY is #{@converted_value}")
    end
  end
end