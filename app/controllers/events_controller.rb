class EventsController < InheritedResources::Base

  private

    def event_params
      params.require(:event).permit(:name, :lng, :lat)
    end
end

