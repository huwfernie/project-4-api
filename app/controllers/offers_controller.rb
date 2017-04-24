class OffersController < ApplicationController
  skip_before_action :authenticate_user!, except: [:update, :destroy]

  before_action :set_offer, only: [:show, :update, :destroy]

  # GET /offers
  def index
    @offers = Offer.all

    render json: @offers
  end

  # This is Huws search method
  def search
    # max = (params[:valueMax] || 1_000_000).to_i
    # min = (params[:valueMin] || 0).to_i
    # @offers = Offer.where("title ILIKE :search AND value <= :max AND value >= :min", { search: "%#{params[:search]}%", max: max, min: min })
    # render json: @offers
    max = (params[:valueMax] || 1_000_000).to_i
    min = (params[:valueMin] || 0).to_i
    @offers = []
    query = (params[:search])
    query.split(' ').each do |keyword|
      @offers += Offer.where("title ILIKE :search AND value <= :max AND value >= :min", { search: "%#{keyword}%", max: max, min: min })
    end
    render json: @offers
  end
  # This is back to the normal Rails api below.

  # GET /offers/1
  def show
    render json: @offer
  end

  # POST /offers
  def create
    @offer = Offer.new(Uploader.upload(offer_params))

    if @offer.save
      render json: @offer, status: :created, location: @offer
    else
      render json: @offer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /offers/1
  def update
    if @offer.update(Uploader.upload(offer_params))
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
      params.require(:offer).permit(:title, :body, :user_id, :value, :image,  :base64) #// get rid of image later
    end
end
