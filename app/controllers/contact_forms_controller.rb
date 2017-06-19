class ContactFormsController < ApplicationController
  def new
  	@contact = ContactForm.new
  end

  def create
  		#render text: params.inspect
  		@contact = ContactForm.new
  		@stuff = ContactForm.new(params.require(:contact_form).permit(:name, :email, :mesage))

  	if @stuff.save
  		flash.now[:success] = 'Your message was sent.'
  		ContactMailer.new_contact(@stuff).deliver_now
  		render 'new'
  	else
  		render 'new'
  	end		
  end	

	
end
