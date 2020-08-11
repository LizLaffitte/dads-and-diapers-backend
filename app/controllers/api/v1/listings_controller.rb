class Api::V1::ListingsController < ApplicationController
    before_action :find_listing, only: [:show, :update]
    wrap_parameters :listing, include: [:name, :address]
    def index
        listings = Listing.all
        render json: ListingSerializer.new(listings)
    end

    def show
        render json: ListingSerializer.new(@listing)
    end

    def create 
        listing = Listing.new(listing_params)
        if listing.save
            render json: ListingSerializer.new(listing)
        else
            render json: {errors: listing.errors.full_messages}, status: unprocessable_entity
        end
    end

    def update
        @listing.update(listing_params)
        if @listing.save
            render json: ListingSerializer.new(@listing)
        else
            render json: {error: @listing.errors.full_messages.to_sentence}, status: :unprocessable_entity
        end
    end

    private

    def listing_params
        params.require(:listing).permit(:name, :address)
    end

    def find_listing
        @listing = Listing.find_by_id(params[:id])
    end

end
