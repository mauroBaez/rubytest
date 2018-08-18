class MessageboardsController < InheritedResources::Base

  private

    def messageboard_params
      params.require(:messageboard).permit(:name)
    end
end

