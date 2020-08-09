class Api::V1::ReviewsController < ApplicationController
    before_action :find_review, only: [:show, :update]
    
    def index
        reviews = Review.all
        render json: ReviewSerializer.new(reviews)
    end

    def show
        render json: ReviewSerializer.new(@review)
    end

    private

    def review_params
        params.require(:review).permit(:listing_id, :user_id, :mens, :womens, :private, :broken, :clean)
    end

    def find_review
        @review = Review.find_by_id(params[:id])
    end
end
