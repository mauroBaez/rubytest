class GuestsController < InheritedResources::Base

  private

    def guest_params
      params.require(:guest).permit(:name, :email, :phone, :invitation_id)
    end
end

