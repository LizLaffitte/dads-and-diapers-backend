class Api::V1::ListingsController < ApplicationController
    def index
        listings = Listing.all
        render json: listings
    end

    def show
        listing = Listing.find_by_id(params[:id])
        render json: listing
    end

    def create 
        listing = Listing.new(listing_params)
        if listing.save
            render json: listing
        else
            render json: {errors: listing.errors.full_messages},
            status: unprocessable_entity
        end
    end

    private

    def listing_params
        params.require(:listing).permit(:name, :address)
    end

end
