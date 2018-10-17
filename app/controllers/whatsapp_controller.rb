class WhatsappController < ApplicationController
    
    def quick_whatsapp
      @invitation = Invitation.find(params[:id])
      @guests = @invitation.guests
      render layout: false 
    end
    
end
