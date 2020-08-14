class Api::V1::ReviewsController < ApplicationController
    before_action :find_review, only: [:show, :update]
    wrap_parameters :review, include: [:mens, :womens, :private, :broken, :clean, :user_id, :listing_id]
    def index
        reviews = Review.all
        render json: ReviewSerializer.new(reviews)
    end

    def show
        render json: ReviewSerializer.new(@review)
    end

    def create
        review = Review.new(review_params)
        if review.save
            render json: ReviewSerializer.new(review)
        else
            render json: {error: review.errors.full_messages.to_sentence}, status: :unprocessable_entity
        end
    end

    private

    def review_params
        params.require(:review).permit(:listing_id, :user_id, :mens, :womens, :private, :broken, :clean)
    end

    def find_review
        @review = Review.find_by_id(params[:id])
    end
end
