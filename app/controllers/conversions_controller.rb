# This is in the process of being moved into TwilloApi.rb
# work off that library instead of this
class ConversionsController < ApplicationController
  def create
    render :nothing => true

    body = params[:Body]
    from = params[:From]

    user = User.find_by_phone_number(from)
    exchange = Exchange.from_config
    @converted_amount = exchange.convert(body, user.from_currency, user.to_currency)
    twilioapi = TwilioApi.new
    @sms = twilioapi.send_sms(from, "#{user.to_currency} #{@converted_amount}")
  end
end
