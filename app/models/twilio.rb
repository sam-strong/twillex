require 'rubygems'
require 'twilio-ruby'

account_sid = "AC2272335f96708cace80d492da00d18ed"
auth_token = "777673f58d73ae1790981f72f9b410de"
client = Twilio::REST::Client.new account_sid, auth_token


class TwilioSMS


  from = "+14159998888" # Your Twilio number

  friends = {
    "+14153334444" => "Curious George",
    "+14155557775" => "Boots",
    "+14155551234" => "Virgil"
  }
  friends.each do |key, value|
    client.account.sms.messages.create(
      :from => from,
      :to => key,
      :body => "Hey #{value}, Monkey party at 6PM. Bring Bananas!"
    )
    puts "Sent message to #{value}"
  end


end
