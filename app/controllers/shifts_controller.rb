class ShiftsController < InheritedResources::Base

  private

    def shift_params
      params.require(:shift).permit(:user_id, :location_id, :weather_id, :start_time, :end_time)
    end
end
