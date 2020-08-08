class Api::V1::ListingsController < ApplicationController
    def index
        listings = Listing.all
        render json: listings
    end

    def show
        listing = Listing.find_by_id(params[:id])
        render json: listing
    end

    def new
    end

    def create 
    end

end
