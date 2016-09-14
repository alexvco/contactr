class ContactMailer < ApplicationMailer
  default from: 'me@gmail.com'
   
   def welcome_email(contact)
    #pass in contact to welcome_email only if you want to do @contact.firstname in your views
    @contact = contact
      mail(to: 'me@gmail.com', subject: 'Welcome to My Awesome Site')
      

      #the below is working perfectly (multiple emails)
      # multiple_emails = ["me@gmail.com", "me@yahoo.com", "me@hotmail.com"]
      # mail(to: multiple_emails,  subject: "multiple bcc")
      # mail(bcc: multiple_emails,  subject: "multiple bcc")

      #the below is working perfectly (cc/bbc/reply)
      #mail(to: "me@gmail.com",reply_to: "me@yahoo.com", cc: "me@yahoo.com", bcc: "me@hotmail.com",  subject: "sample subject")
   end
end
