class WeddingsController < InheritedResources::Base

  private
    def wedding_params
      params.require(:wedding).permit!
    end
end

