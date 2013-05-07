class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    send_welcome_text
    redirect_to root_path
  end

  def send_welcome_text
    twilioapi = TwilioApi.new
    twilioapi.send_sms(@user.phone_number, "Hey #{@user.name} you have signed up to convert #{@user.from_currency} to #{@user.to_currency}! Twillex love xx!")
  end

end
