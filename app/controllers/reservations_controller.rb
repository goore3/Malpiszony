class ReservationsController < ApplicationController
    layout 'application'
    def new
      @reservations = Reservation.new
      @events_ids = Event.all.collect(&:id)
    end
  
    def create
      @reservations = Reservation.new(reservations_params)
      @events_ids = Event.all.collect(&:id)
      if @reservations.save
        redirect_to root_path
      else
        render :new, status: :unprocessable_entity
      end
    end
  
    private
      def reservations_params
        params.require(:reservation).permit(:first_name, :last_name, :phone, :email, :event_id)
      end
end
