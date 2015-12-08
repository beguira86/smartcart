class WelcomeMailer < ApplicationMailer
	def welcome(user)
		@user = user
		mail(to: user.email, subject: "Welcome to SmartCart!")
	end
end
