class ContactFormsController < ApplicationController
  def new
  	@contact = ContactForm.new
  end

  def create
  		#render text: params.inspect
  		@stuff = ContactForm.new(params.require(:contact_form).permit(:name, :email, :mesage))

  	if @stuff.save
  		flash[:success] = 'you message was sent'
  		ContactMailer.new_contact(@stuff).deliver_now
  	else
  		render 'new'
  	end		


 	
  end	
end
