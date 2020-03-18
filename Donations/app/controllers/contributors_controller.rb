class ContributorsController < ApplicationController

  def index
		@con =Contributor.all
	end
		
  def add_bio
  	@con =Contributor.find_by(params[:id])
  end
  
  def update
  	@con =Contributor.find_by(params[:id])
  	if @con.update_attributes(contributor_params)
  		flash[:notice] = 'successfully added'
  		redirect_to contributors_path
  	else
  		flash[:notice] = 'un-successfully added'

  	end
  end

   def donate
    con =Contributor.find(params[:id])
    	if con.nil?
    		redirect_to root_path
    		return
    	end
   	@session = Stripe::Checkout::Session.create(
   		payment_method_types: ['card'],
   		line_items: [{
   		name: con.email,
   		amount: con.price_cents,
   		currency: 'INR',
   		quantity: 1
   		}],
   		success_url: contributor_success_url,
		  cancel_url: contributor_cancel_url
	  )
   	
    respond_to do |format|
   		format.js
   	end
  end

  private
    def contributor_params
   	  params.require(:contributor).permit(:bio,:price)
    end

end