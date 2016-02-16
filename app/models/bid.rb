class Bid < ActiveRecord::Base
	validates :title, presence: true
	validates :contractor, presence: true
	validates :mode, numericality: { :greater_than => 0 }, presence: true
	validates :number, numericality: { :greater_than_or_equal_to => 0 }, presence: true
	searchkick
end
