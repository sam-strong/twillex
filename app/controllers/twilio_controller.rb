class TwilioController < ApplicationController
  def index
  end

  def send_text_message
    number_to_send_to = params[:number_to_send_to]

    account_sid = "AC2272335f96708cace80d492da00d18ed"
    auth_token = "777673f58d73ae1790981f72f9b410de"
    twilio_phone_number = "441704450128"

    @twilio_client = Twilio::REST::Client.new account_sid, auth_token

    @twilio_client.account.sms.messages.create(
      :from => "+44#{twilio_phone_number}",
      :to => number_to_send_to,
      :body => "This is an message. It gets sent to #{number_to_send_to}"
    )
  end



  def process_sms
    @amount = params[:amount].to_i
    b = params[:Body]

    if b.downcase.include?("question")
      @type = "Question"
      @question = u.questions.build(:description => b)
      @question.save!
      render 'new_question.xml.erb', :content_type => 'text/xml'
    elsif b.downcase.include?("contact")
      @type = "Contact"
      @contact = u.contacts.build(:name => b)
      @contact.save!
      render 'new_contact.xml.erb', :content_type => 'text/xml'
    else
      @type = "Not sure"
      render 'not_sure.xml.erb', :content_type => 'text/xml'
    end

end
