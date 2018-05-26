class EmailController < ApplicationController
  def create
  	email = params[:post][:email]
  	Email.find_or_create_by(email: email) if email
  end

  def index
  	@emails = Email.all
  	respond_to do |format|
    	format.html
    	format.csv { send_data(@emails.to_csv) }
    end
  end
    
end
