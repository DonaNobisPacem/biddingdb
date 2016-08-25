class Api::V1::BidsController < Api::V1::BaseController
  before_action :set_bid, only: [:show]

  def index
    expose Bid.where("archived is null or archived is false").order(created_at: :desc), only: [:id, :title, :contractor, :mode, :preprocurement, :prebidding, :bidding, :postqualification, :noa, :purchase, :ntp]
  end

  def show
    expose @bid
  end

  def archive
    expose Bid.where(archived: true).order(created_at: :desc), only: [:id, :title, :contractor, :mode]
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bid
      @bid = Bid.find(params[:id])
    end
end