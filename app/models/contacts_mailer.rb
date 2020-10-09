class ContactsMailer < ActionMailer::Base
  default from: "berenice.mahe@gmail.com"

  def general_message(contact)
    @contact = contact
    mail( :to => "berenice.mahe@gmail.com", :subject => "You Have a Message From Your Website")
  end
end
