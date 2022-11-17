class AddressController < ApplicationController
    before_action :set_address
    
    def show
        render json: @phones
    end    
    
    private
        # Use callbacks to share common setup or constraints between actions.
        def set_address
          if params[:contact_id]
            @kind = Contact.find(params[:contact_id]).address
        end
    end