class ContactMailer < ApplicationMailer
  default from: 'notifications@example.com'
   
   def welcome_email
      # @user = user
      # @url  = 'http://www.gmail.com'
      mail(to: @contact.email, subject: 'Welcome to My Awesome Site')
   end
end
