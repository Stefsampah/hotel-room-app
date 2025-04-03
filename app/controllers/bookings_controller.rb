class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.user = User.first 

    puts "Params reçus : #{params.inspect}"
    puts "Booking valid? #{@booking.valid?}"
    puts "Errors: #{@booking.errors.full_messages}"

    if @booking.save
      redirect_to confirmation_bookings_path, notice: "Booking successfully created!"
    else
      flash[:alert] = "Please fill in all fields correctly."
      redirect_to room_path(params[:booking][:room_id])
    end
  end


  def confirmation
    @booking = Booking.last # Récupère la dernière réservation effectuée
    # Tu peux ajouter une logique pour transmettre des informations spécifiques à la vue si nécessaire.
  end

    private

    def booking_params
      params.require(:booking).permit(:check_in, :check_out, :guests, :room_id, :user_id)
    end

end
