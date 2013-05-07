# # This is in the process of being moved into TwilloApi.rb
# # work off that library instead of this
# class TwilioController < ApplicationController
#   def index
#   end

#   def send_text_message(user)
#     number_to_send_to = user.phone_number
#     user_name = user.name
#     user_from_currency = user.user_from_currency
#     user_to_currency = user.user_to_currency
#     #number_to_send_to ||= params[:number_to_send_to]

#     account_sid = "AC2272335f96708cace80d492da00d18ed"
#     auth_token = "777673f58d73ae1790981f72f9b410de"
#     twilio_phone_number = "441704450128"

#     @twilio_client = Twilio::REST::Client.new account_sid, auth_token

#     @twilio_client.account.sms.messages.create(
#       :from => "+44#{twilio_phone_number}",
#       :to => number_to_send_to,
#       :body => "Hey #{user_name} you have signed up to convert #{user_from_currency} to #{user_to_currency}! Twillex love xx!"
#     )
#   end



#   def process_sms
#     @amount = params[:amount].to_i
#     b = params[:Body]

#     if b.downcase.include?("question")
#       @type = "Question"
#       @question = u.questions.build(:description => b)
#       @question.save!
#       render 'new_question.xml.erb', :content_type => 'text/xml'
#     elsif b.downcase.include?("contact")
#       @type = "Contact"
#       @contact = u.contacts.build(:name => b)
#       @contact.save!
#       render 'new_contact.xml.erb', :content_type => 'text/xml'
#     else
#       @type = "Not sure"
#       render 'not_sure.xml.erb', :content_type => 'text/xml'
#     end
#   end
# end
