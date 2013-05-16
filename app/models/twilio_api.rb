class TwilioApi

  def initialize
    set_up_client
  end


  def send_sms(to, body)
    response = messenger.create({:from => '+441704450128', :to => to, :body => body})
  end

  def receives_sms(sms_id)
    response = messenger.get(sms_id)
    # log(response)
  end

  private

  # def log(response)
  #   Rails.logger.info("Sending message via Twilio API to #{response.to} with status #{response.status}")
  #   Rails.logger.info("Twilio message was: #{response.body}")
  # end

  def set_up_client
    @account_sid = "AC2272335f96708cace80d492da00d18ed"
    @auth_token = "777673f58d73ae1790981f72f9b410de"
    @client = Twilio::REST::Client.new @account_sid, @auth_token
  end

  def messenger
    @client.account.sms.messages
  end
end
#
