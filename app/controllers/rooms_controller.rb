class RoomsController < ApplicationController
    # def index
    #   @rooms = Room.all
    # end
    def index
      if params[:search].present? # Permet une recherche basée sur la localisation ou des critères
        @rooms = Room.joins(:hotel).where("hotels.location LIKE ?", "%#{params[:search]}%")
      else
        @rooms = Room.limit(6) # Limite à 6 chambres
      end
    end

    def show
      @room = Room.find(params[:id])
      @booking = Booking.new # Prépare un objet réservation
    end

    def new
      @room = Room.new
    end

    def create
      @room = Room.new(room_params)
      if @room.save
        redirect_to @room, notice: 'Room was successfully created.'
      else
        render :new
      end
    end

    def edit
      @room = Room.find(params[:id])
    end

    def update
      @room = Room.find(params[:id])
      if @room.update(room_params)
        redirect_to @room, notice: 'Room was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @room = Room.find(params[:id])
      @room.destroy
      redirect_to rooms_url, notice: 'Room was successfully destroyed.'
    end

    private

    def room_params
      params.require(:room).permit(:name, :capacity, :price)
    end

end
