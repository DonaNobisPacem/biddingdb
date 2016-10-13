class CalendarsController < ApplicationController
	before_action :authenticate_user!

	def index
		@bids = Bid.all
	end
end
