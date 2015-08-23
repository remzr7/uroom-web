class ListingsController < ApplicationController
  before_action :authenticate_user!, only: [:orbit, :land]

  def show
    # get parameters
    @id = params[:id].to_i
    @people = params[:roommates].to_i + 1
    @month = params[:month].to_i
    @year = params[:year].to_i
    @lease_length = params[:lease_length].to_i

    @listing = Listing.find(@id)
    # If user is orbiting show others orbiting

    # Uncomment when user features established
    # check if user has planet for this
    # orbits = []
    # user.orbits.each do |orbit|
    #   if orbit.planet.listing == @listing
    #     orbits << orbit
    #   end
    # end
  end

  def orbit
    # if succeeded redirect to show
    current_user
  end

  def land

  end

end
