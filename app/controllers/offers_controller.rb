class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :update, :destroy]

  # GET /offers
  def index
    @offers = Offer.all

    render json: @offers
  end
  
  # This is Huws search method
  def search
    # @results = Offer.where("title ILIKE 'Bicycle'")
    @results = Offer.where("title ILIKE ? AND value < ? and value > ?", params[:search], (params[:valueMax]).to_i, (params[:valueMin]).to_i)
    render json: @results
  end
  # This is back to the normal Rails api below.

  # GET /offers/1
  def show
    render json: @offer
  end

  # POST /offers
  def create
    @offer = Offer.new(offer_params)

    if @offer.save
      render json: @offer, status: :created, location: @offer
    else
      render json: @offer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /offers/1
  def update
    if @offer.update(offer_params)
      render json: @offer
    else
      render json: @offer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /offers/1
  def destroy
    @offer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offer
      @offer = Offer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def offer_params
      params.require(:offer).permit(:title, :body, :user_id, :value, :image)
    end
end
