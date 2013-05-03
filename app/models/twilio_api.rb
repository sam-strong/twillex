class TwilioApi

  def send_sms(from, to, body)

    @account_sid = "AC2272335f96708cace80d492da00d18ed"
    @auth_token = "777673f58d73ae1790981f72f9b410de"
    @client = Twilio::REST::Client.new @account_sid, @auth_token

    @account = @client.account
    @account.sms.messages.create({:from => from, :to => to, :body => body})
  end


  def receives_sms(sms_id)
    @account_sid = "AC2272335f96708cace80d492da00d18ed"
    @auth_token = "777673f58d73ae1790981f72f9b410de"
    @client = Twilio::REST::Client.new @account_sid, @auth_token

    @account = @client.account
    @sms_message = @account.sms.messages.get(sms_id)
  end
end
#
