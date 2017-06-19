class ContactMailer < ApplicationMailer

	def new_contact(contact)
    @thing = contact

    mail to: 'miulee@ucdavis.edu', subject: "New Message was posted"
  end
end
