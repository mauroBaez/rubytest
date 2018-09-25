class WeddingsController < InheritedResources::Base

  private
    def wedding_params
      params.require(:wedding).permit(:groom_name, :groom_surname, :bride_name, :bride_surname)
    end
end

