class Bid < ActiveRecord::Base
	validates :title, presence: true
	validates :contractor, presence: true
	validates :mode, numericality: { :greater_than => 0 }, presence: true
	validates :number, numericality: { :greater_than_or_equal_to => 0 }, presence: true

	validates_presence_of :preprocurement, if: :is_public_bidding?
    validates_presence_of :prebidding, if: :is_public_bidding?
    validates_presence_of :bidding, if: :is_public_bidding?
    validates_presence_of :postqualification, if: :is_public_bidding?
    validates_presence_of :noa, if: :is_public_bidding?
    validates_presence_of :purchase, if: :is_public_bidding?
    validates_presence_of :ntp, if: :is_public_bidding?
    validates_presence_of :members, if: :is_public_bidding?

	searchkick

	def mode_description
		Mode.find(mode).description
	end

	private
		def is_public_bidding?
			if mode.present?
				if mode == 2
					return true
				else
					return false
				end
			end
		end
end
