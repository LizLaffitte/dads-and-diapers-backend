class Api::V1::ReviewsController < ApplicationController
    before_action :find_review, only: [:show, :update, :destroy]
    wrap_parameters :review, include: [:mens, :womens, :isolated, :working, :clean, :user_id, :listing_id]
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
            review.listing.calc_chances
            render json: ReviewSerializer.new(review)
        else
            render json: {error: review.errors.full_messages.to_sentence}, status: :unprocessable_entity
        end
    end

    def update
        @review.update(review_params)
        if @review.save
            @review.listing.calc_chances
            render json: ReviewSerializer.new(@review)
        else
            render json: {error: reivew.errors.full_messages.to_sentence}, status: :unprocessable_entity
        end
    end

    def destroy
        listing = @review.listing
        @review.destroy
        listing.calc_chances
        render json: {notice: "Your review has been deleted."}
    end    

    private

    def review_params
        params.require(:review).permit(:listing_id, :user_id, :mens, :womens, :isolated, :working, :clean)
    end

    def find_review
        @review = Review.find_by_id(params[:id])
    end
end
