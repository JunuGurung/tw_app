module Messenger
	def send_sms(number)
		acc_sid="AC42945136550acd1ae5b256be4caf9403"
		auth_token="36ce9fad812c5d92b0644db11c5e46e1"


		@client=Twilio::REST::Client.new acc_sid,auth_token

		from='+16174105696'
		message=@client.account.messages.create(
              :from=>from,
              :to=>'1'+number,
              :body=>"hey this is my Twilio app with heruko."
			)
	end
	
end