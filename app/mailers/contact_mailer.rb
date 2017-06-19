class ContactMailer < ApplicationMailer

	def new_contact(contact)
    @thing = contact

    mail to: 'azizkatawazai@gmail.com', subject: "New Message was posted"
  end
end
