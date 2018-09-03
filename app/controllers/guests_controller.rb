class GuestsController < InheritedResources::Base

  private

    def guest_params
      params.require(:guest).permit!
    end
end

