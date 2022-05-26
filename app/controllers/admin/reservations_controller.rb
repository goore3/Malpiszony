class Admin::ReservationsController < ApplicationController
    layout 'admin'
    before_action :authenticate_employee!
    def index
      @reservations = Reservation.all
    end
    def show
      @reservations = Reservation.find(params[:id])
      @event_name = Event.find(@reservations.event_id).name
    end
    def new
      @reservations = Reservation.new
      @events_ids = Event.all.collect(&:id)
    end
  
    def create
      @reservations = Reservation.new(reservations_params)
      @events_ids = Event.all.collect(&:id)
      if @reservations.save
        redirect_to [:admin, @reservations]
      else
        render :new, status: :unprocessable_entity
      end
    end
    
    def edit
      @reservations = Reservation.find(params[:id])
      @events_ids = Event.all.collect(&:id)
    end
  
    def update
      @reservations = Reservation.find(params[:id])
      @events_ids = Event.all.collect(&:id)
      if @reservations.update(reservations_params)
        redirect_to [:admin, @reservations]
      else
        render :edit, status: :unprocessable_entity
      end
    end
  
    def destroy
      @reservations = Reservation.find(params[:id])
      @reservations.destroy
  
      redirect_to "/admin/reservations/", status: :see_other
    end
  
    private
      def reservations_params
        params.require(:reservation).permit(:first_name, :last_name, :phone, :email, :event_id)
      end
end
