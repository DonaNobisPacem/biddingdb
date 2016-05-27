class BidsController < ApplicationController
  before_action :authenticate_user!
  before_action :check_user_access!, except: [:index, :show]
  before_action :set_bid, only: [:show, :edit, :update, :destroy]

  # GET /bids
  # GET /bids.json
  def index
    if params[:search].present?
      #@bids = Bid.search(params[:search], page: params[:page], per_page: 10)
      @shopping = Bid.search(params[:search], where: {mode: 1} )
      @bidding = Bid.search(params[:search], where: {mode: 2} )
      @quotation = Bid.search(params[:search], where: {mode: 3} )
    else
      @bids = Bid.all
      @shopping = @bids.where(mode: 1)
      @bidding = @bids.where(mode: 2)
      @quotation = @bids.where(mode: 3)
    end
  end

  # GET /bids/1
  # GET /bids/1.json
  def show
    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /bids/new
  def new
    @bid = Bid.new
  end

  # GET /bids/1/edit
  def edit
  end

  # POST /bids
  # POST /bids.json
  def create
    @bid = Bid.new(bid_params)

    respond_to do |format|
      if @bid.save
        format.html { redirect_to @bid, notice: 'Bid was successfully created.' }
        format.json { render :show, status: :created, location: @bid }
      else
        format.html { render :new }
        format.json { render json: @bid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bids/1
  # PATCH/PUT /bids/1.json
  def update
    respond_to do |format|
      if @bid.update(bid_params)
        format.html { redirect_to @bid, notice: 'Bid was successfully updated.' }
        format.json { render :show, status: :ok, location: @bid }
      else
        format.html { render :edit }
        format.json { render json: @bid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bids/1
  # DELETE /bids/1.json
  def destroy
    @bid.destroy
    respond_to do |format|
      format.html { redirect_to bids_url, notice: 'Bid was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bid
      @bid = Bid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bid_params
      params.require(:bid).permit(:title, :contractor, :number, :mode, :budget, :amount, :preprocurement, :prebidding, :bidding, :postqualification, :noa, :purchase, :ntp, :members, :addtl_info, :remarks)
    end

    def check_user_access!
      redirect_to "/" if current_user.read_only
    end
end
