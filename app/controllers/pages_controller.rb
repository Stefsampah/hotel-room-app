class PagesController < ApplicationController
  def home
      @rooms = Room.limit(3) # Affiche 3 chambres
  end
end
