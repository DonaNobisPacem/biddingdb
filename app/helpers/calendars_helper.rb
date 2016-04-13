module CalendarsHelper
	def fetch_bids( date )
		#Bid.where{created_at >= 2.weeks.ago}
		start_date = date.beginning_of_day
		end_date = date.end_of_day
		date_range = (date.beginning_of_day)..(date.end_of_day)
		# Bid.where{
		# 	(preprocurement = date_range)
		# 	# (prebidding = date_range) |
		# 	# (bidding = date_range) |
		# 	# (postqualification = date_range) |
		# 	# (noa = date_range) |
		# 	# (purchase = date_range) |
		# 	# (ntp = date_range)
		# }.count

		Bid.where("
				preprocurement between ? and ? OR
				prebidding between ? and ? OR
				bidding between ? and ? OR
				postqualification between ? and ? OR
				noa between ? and ? OR
				purchase between ? and ? OR
				ntp between ? and ?
			",
				start_date, end_date,
				start_date, end_date,
				start_date, end_date,
				start_date, end_date,
				start_date, end_date,
				start_date, end_date,
				start_date, end_date
			)
	end

	def conditional_div( count )
		if count < 1
			return "panel-warning"
		else
			return "panel-success"
		end
	end
end
