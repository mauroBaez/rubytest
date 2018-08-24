class InvitationsController < InheritedResources::Base

  private

    def invitation_params
      params.require(:invitation).permit(:title, :sent, :sent_datetime)
    end
end

